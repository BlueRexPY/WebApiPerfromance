{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TypeOperators #-}

module Main where

import Control.Monad.IO.Class (liftIO)
import Data.Aeson
import Data.Pool
import Data.Text (Text)
import qualified Data.Text as T
import Data.Time (UTCTime)
import Database.PostgreSQL.Simple
import Database.PostgreSQL.Simple.FromRow
import GHC.Generics
import Network.Wai.Handler.Warp
import Servant
import System.Environment (lookupEnv)

-- Data types
data HelloResponse = HelloResponse
  { message :: Text
  } deriving (Generic, Show)

instance ToJSON HelloResponse

data Order = Order
  { orderId :: Int
  , customerId :: Int
  , totalCents :: Int
  , status :: Text
  , createdAt :: UTCTime
  } deriving (Generic, Show)

instance ToJSON Order where
  toJSON order = object
    [ "id" .= orderId order
    , "customer_id" .= customerId order
    , "total_cents" .= totalCents order
    , "status" .= status order
    , "created_at" .= createdAt order
    ]

instance FromRow Order where
  fromRow = Order <$> field <*> field <*> field <*> field <*> field

-- API definition
type API = "hello" :> Get '[JSON] HelloResponse
      :<|> "orders" :> Get '[JSON] [Order]

-- Handlers
server :: Pool Connection -> Server API
server pool = helloHandler :<|> ordersHandler
  where
    helloHandler :: Handler HelloResponse
    helloHandler = return $ HelloResponse "Hello, World!"

    ordersHandler :: Handler [Order]
    ordersHandler = liftIO $ withResource pool $ \conn ->
      query conn "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000" ()

-- Application
api :: Proxy API
api = Proxy

app :: Pool Connection -> Application
app pool = serve api (server pool)

-- Database connection
getDatabaseUrl :: IO String
getDatabaseUrl = do
  maybeUrl <- lookupEnv "DATABASE_URL"
  case maybeUrl of
    Just url -> return url
    Nothing -> error "DATABASE_URL environment variable is not set"

createConnectionPool :: String -> IO (Pool Connection)
createConnectionPool connStr = do
  let poolConfig = defaultPoolConfig (connectPostgreSQL $ T.pack connStr) close 30.0 90
  newPool poolConfig

-- Main
main :: IO ()
main = do
  connStr <- getDatabaseUrl
  pool <- createConnectionPool connStr
  putStrLn "Starting server on port 8000"
  run 8000 (app pool)
