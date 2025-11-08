{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Control.Monad.IO.Class (liftIO)
import Data.Aeson
import Data.Pool
import Data.Text (Text)
import Data.Text qualified as T
import Data.Time (UTCTime)
import Database.PostgreSQL.Simple
import Database.PostgreSQL.Simple.FromRow
import GHC.Generics
import Network.Wai.Handler.Warp
import Servant
import System.Environment (lookupEnv)
import qualified Configuration.Dotenv as Dotenv

-- Data types
data HelloResponse = HelloResponse
  { message :: Text
  }
  deriving (Generic, Show)

instance ToJSON HelloResponse

  { orderId :: Int,
    customerId :: Int,
    totalCents :: Int,
    status :: Text,nt,
    createdAt :: UTCTime
  } createdAt :: UTCTime
  deriving (Generic, Show)
  deriving (Generic, Show)
instance ToJSON Order where
  toJSON order =Order where
    objectrder =
      [ "id" .= orderId order,
        "customer_id" .= customerId order,
        "total_cents" .= totalCents order,
        "status" .= status order,ts order,
        "created_at" .= createdAt order
      ] "created_at" .= createdAt order
      ]
instance FromRow Order where
  fromRow = Order <$> field <*> field <*> field <*> field <*> field
  fromRow = Order <$> field <*> field <*> field <*> field <*> field
-- API definition
type API =inition
  Get '[JSON] HelloResponse
    :<|> "orders" :> Get '[JSON] [Order]
    :<|> "orders" :> Get '[JSON] [Order]
-- Handlers
server :: Pool Connection -> Server API
server pool = helloHandler :<|> ordersHandler
  wherepool = helloHandler :<|> ordersHandler
    helloHandler :: Handler HelloResponse
    helloHandler = return $ HelloResponse "Hello, World!"
    helloHandler = return $ HelloResponse "Hello, World!"
    ordersHandler :: Handler [Order]
    ordersHandler = liftIO $ withResource pool $ \conn ->
      query conn "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000" ()
      query conn "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000" ()
-- Application
api :: Proxy API
api = Proxyy API
api = Proxy
app :: Pool Connection -> Application
app pool = serve api (server pool)ion
app pool = serve api (server pool)
-- Database connection
getDatabaseUrl :: IO ConnectInfo
getDatabaseUrl = doO ConnectInfo
  maybeUrl <- lookupEnv "DATABASE_URL"
  case maybeUrl ofupEnv "DATABASE_URL"
    Just url -> return $ parseConnectInfo url
    Nothing -> error "DATABASE_URL environment variable is not set"
    Nothing -> error "DATABASE_URL environment variable is not set"
parseConnectInfo :: String -> ConnectInfo
parseConnectInfo _ =String -> ConnectInfo
  ConnectInfonfo _ =
    { connectHost = "db",
      connectPort = 5432,
      connectUser = "apiuser",
      connectPassword = "apipassword",
      connectDatabase = "ordersdb"rd",
    } connectDatabase = "ordersdb"
    }
createConnectionPool :: ConnectInfo -> IO (Pool Connection)
createConnectionPool connInfo = doo -> IO (Pool Connection)
  let poolConfig = defaultPoolConfig (connect connInfo) close 30.0 90
  newPool poolConfigefaultPoolConfig (connect connInfo) close 30.0 90
  newPool poolConfig
-- Main
main :: IO ()
main = doO ()
  mDbUrl <- lookupEnv "DATABASE_URL"
  let connStr = maybe "host=db port=5432 dbname=api user=admin password=admin" id mDbUrle errors)
  connInfo <- parseConnectInfo connStrig `catch` (\(_ :: SomeException) -> return ())
  pool <- createConnectionPool connInfo
  putStrLn "Starting server on port 8000"  -- Get DATABASE_URL with a default fallback


  run 8000 (app pool)  dbUrl <- lookupEnv "DATABASE_URL"
  let connStr = case dbUrl of
        Just url -> url
        Nothing  -> "host=db port=5432 dbname=api user=admin password=admin"
  
  connInfo <- parseConnectInfo connStr
  pool <- createConnectionPool connInfo
  putStrLn "Starting server on port 8000"
  run 8000 (app pool)
