{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE ImportQualifiedPost #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Control.Exception (SomeException, catch)
import Control.Monad.IO.Class (liftIO)
import Data.Aeson
import Data.Pool
import Data.Text (Text)
import Data.Text qualified as T
import Data.Time (LocalTime)
import Database.PostgreSQL.Simple
import Database.PostgreSQL.Simple.FromRow
import GHC.Generics
import Network.Wai.Handler.Warp
import Servant
import System.Environment (lookupEnv)

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
    :<|> "orders" :> Get '[JSON] [Order]

-- Handlers
server :: Pool Connection -> Server API
server pool = helloHandler :<|> ordersHandler
  where
    helloHandler :: Handler HelloResponse
    helloHandler = return $ HelloResponse "Hello, World!"

    ordersHandler :: Handler [Order]
    ordersHandler = liftIO $ withResource pool $ \conn ->
      query_ conn "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000"

-- Application
api :: Proxy API
api = Proxy

app :: Pool Connection -> Application
app pool = serve api (server pool)

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

-- Main
main :: IO ()
main = do
  mDbUrl <- lookupEnv "DATABASE_URL"
  let connStr = maybe "host=db port=5432 dbname=ordersdb user=apiuser password=apipassword" id mDbUrl
  let connInfo = parseConnectInfo connStr
  pool <- createConnectionPool connInfo
  putStrLn "Starting server on port 8000"
  run 8000 (app pool)
