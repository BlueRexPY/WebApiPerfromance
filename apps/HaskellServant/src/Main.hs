{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Control.Exception (SomeException, catch)
import Control.Monad.IO.Class (liftIO)
import Data.Aeson
import Data.Bson (Document, Value(..), (=:))
import Data.Bson qualified as Bson
import Data.Pool
import Data.Text (Text)
import Data.Text qualified as T
import Data.Time (LocalTime, UTCTime)
import Data.Time.Format (formatTime, defaultTimeLocale)
import Database.MongoDB (Pipe, connect, host, access, master, find, select, rest)
import Database.MongoDB qualified as Mongo
import Database.PostgreSQL.Simple
import Database.PostgreSQL.Simple.FromRow
import GHC.Generics
import Network.Wai.Handler.Warp
import Servant
import System.Environment (lookupEnv)
import Data.Maybe (fromMaybe)

-- Data types
data HelloResponse = HelloResponse
  { message :: Text
  }
  deriving (Generic, Show)

instance ToJSON HelloResponse

data Order = Order
  { orderId :: Int,
    customerId :: Int,
    totalCents :: Int,
    status :: Text,
    createdAt :: LocalTime
  }
  deriving (Generic, Show)

instance ToJSON Order where
  toJSON order =
    object
      [ "id" .= orderId order,
        "customer_id" .= customerId order,
        "total_cents" .= totalCents order,
        "status" .= status order,
        "created_at" .= createdAt order
      ]

instance FromRow Order where
  fromRow = Order <$> field <*> field <*> field <*> field <*> field

-- API definition
type API =
  Get '[JSON] HelloResponse
    :<|> "postgresql" :> "orders" :> Get '[JSON] [Order]
    :<|> "mongodb" :> "orders" :> Get '[JSON] [Aeson.Value]

-- Handlers
server :: Pool Connection -> Pool Pipe -> Server API
server pgPool mongoPool = helloHandler :<|> ordersHandler :<|> mongoOrdersHandler
  where
    helloHandler :: Handler HelloResponse
    helloHandler = return $ HelloResponse "Hello, World!"

    ordersHandler :: Handler [Order]
    ordersHandler = liftIO $ withResource pgPool $ \conn ->
      query_ conn "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000"

    mongoOrdersHandler :: Handler [Aeson.Value]
    mongoOrdersHandler = liftIO $ withResource mongoPool $ \pipe -> do
      docs <- access pipe master "ordersdb" $ do
        cursor <- find (select [] "orders")
          { Mongo.skip = 1000
          , Mongo.limit = 100
          , Mongo.project = ["_id" =: (0 :: Int)]
          }
        rest cursor
      return $ map bsonDocToValue docs

bsonDocToValue :: Document -> Aeson.Value
bsonDocToValue doc =
  object $ concatMap convertField doc
  where
    convertField (k Bson.:= v) =
      let key = Aeson.fromText (Bson.label k)
      in [(key, convertBsonValue v)]

    convertBsonValue (Bson.Int32 n) = toJSON (fromIntegral n :: Int)
    convertBsonValue (Bson.Int64 n) = toJSON (fromIntegral n :: Int)
    convertBsonValue (Bson.Float n) = toJSON n
    convertBsonValue (Bson.String s) = toJSON s
    convertBsonValue (Bson.Bool b) = toJSON b
    convertBsonValue (Bson.UTC t) = toJSON (formatTime defaultTimeLocale "%Y-%m-%dT%H:%M:%SZ" t)
    convertBsonValue (Bson.Doc d) = bsonDocToValue d
    convertBsonValue (Bson.Array vs) = toJSON (map convertBsonValue vs)
    convertBsonValue Bson.Null = Null
    convertBsonValue _ = Null

-- Application
api :: Proxy API
api = Proxy

app :: Pool Connection -> Pool Pipe -> Application
app pgPool mongoPool = serve api (server pgPool mongoPool)

-- Database connection
parseConnectInfo :: String -> ConnectInfo
parseConnectInfo _ =
  ConnectInfo
    { connectHost = "db",
      connectPort = 5432,
      connectUser = "apiuser",
      connectPassword = "apipassword",
      connectDatabase = "ordersdb"
    }

createConnectionPool :: ConnectInfo -> IO (Pool Connection)
createConnectionPool connInfo = do
  let poolConfig = defaultPoolConfig (connect connInfo) close 30.0 120
  newPool poolConfig

createMongoPool :: String -> IO (Pool Pipe)
createMongoPool mongoUrl = do
  let mongoHost = parseMongoHost mongoUrl
  let poolConfig = defaultPoolConfig (connect mongoHost) Database.MongoDB.close 30.0 120
  newPool poolConfig

parseMongoHost :: String -> Mongo.Host
parseMongoHost url =
  let withoutScheme = dropWhile (/= '/') url
      afterSlashes = drop 2 withoutScheme
      hostPart = takeWhile (/= ':') afterSlashes
  in if null hostPart
     then host "mongodb"
     else host hostPart

-- Main
main :: IO ()
main = do
  mDbUrl <- lookupEnv "DATABASE_URL"
  let connStr = fromMaybe "host=db port=5432 dbname=ordersdb user=apiuser password=apipassword" mDbUrl
  let connInfo = parseConnectInfo connStr
  pgPool <- createConnectionPool connInfo
  mongoUrl <- fromMaybe "mongodb://mongodb:27017" <$> lookupEnv "MONGO_URL"
  mongoPool <- createMongoPool mongoUrl
  putStrLn "Starting server on port 8000"
  run 8000 (app pgPool mongoPool)
