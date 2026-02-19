#include <drogon/drogon.h>
#include <json/json.h>
#include <mongoc/mongoc.h>
#include <bson/bson.h>
#include <cstdlib>
#include <ctime>
#include <cstring>
#include <string>
#include <iostream>
#include <regex>

using namespace drogon;

// Parse DATABASE_URL in format: postgresql://user:password@host:port/database
void parseAndConfigureDatabase() {
    const char* envUrl = std::getenv("DATABASE_URL");
    if (!envUrl) {
        std::cerr << "DATABASE_URL environment variable is not set" << std::endl;
        exit(1);
    }
    
    std::string url(envUrl);
    std::regex pattern(R"(postgresql://([^:]+):([^@]+)@([^:]+):(\d+)/(.+))");
    std::smatch matches;
    
    if (!std::regex_match(url, matches, pattern)) {
        std::cerr << "Invalid DATABASE_URL format" << std::endl;
        exit(1);
    }
    
    std::string user = matches[1];
    std::string password = matches[2];
    std::string host = matches[3];
    int port = std::stoi(matches[4]);
    std::string database = matches[5];
    
    app().createDbClient(
        "postgresql",
        host,
        port,
        database,
        user,
        password,
        120,  // connection pool size
        "",   // filename (not used for postgresql)
        "default",
        false, // isFast=false: DB client created before app().run(), event loops not yet alive
        "utf8",  // characterSet
        10.0,    // timeout
        false    // autoBatch - disabled: causes integer parameter encoding errors
    );
}

int main() {
    // Configure database from environment
    parseAndConfigureDatabase();
    
    // GET / - Hello World endpoint
    app().registerHandler(
        "/",
        [](const HttpRequestPtr& req,
           std::function<void(const HttpResponsePtr&)>&& callback) {
            Json::Value json;
            json["message"] = "Hello, World!";
            auto resp = HttpResponse::newHttpJsonResponse(json);
            callback(resp);
        },
        {Get}
    );
    
    // GET /postgresql/orders - Returns orders from database
    app().registerHandler(
        "/postgresql/orders",
        [](const HttpRequestPtr& req,
           std::function<void(const HttpResponsePtr&)>&& callback) {
            auto dbClient = app().getDbClient();
            
            dbClient->execSqlAsync(
                "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000",
                [callback](const orm::Result& result) {
                    Json::Value ordersArray(Json::arrayValue);
                    
                    for (const auto& row : result) {
                        Json::Value order;
                        order["id"] = row["id"].as<int>();
                        order["customer_id"] = row["customer_id"].as<int>();
                        order["total_cents"] = row["total_cents"].as<int>();
                        order["status"] = row["status"].as<std::string>();
                        order["created_at"] = row["created_at"].as<std::string>();
                        ordersArray.append(order);
                    }
                    
                    auto resp = HttpResponse::newHttpJsonResponse(ordersArray);
                    callback(resp);
                },
                [callback](const orm::DrogonDbException& e) {
                    Json::Value error;
                    error["error"] = e.base().what();
                    auto resp = HttpResponse::newHttpJsonResponse(error);
                    resp->setStatusCode(k500InternalServerError);
                    callback(resp);
                }
            );
        },
        {Get}
    );
    
    std::cout << "Starting server on 0.0.0.0:8000" << std::endl;

    // Initialize MongoDB
    mongoc_init();
    const char* mongoUrlEnv = std::getenv("MONGO_URL");
    std::string mongoUrl = mongoUrlEnv ? mongoUrlEnv : "mongodb://mongodb:27017";
    mongoc_uri_t *mongoUri = mongoc_uri_new(mongoUrl.c_str());
    mongoc_client_pool_t *mongoPool = mongoc_client_pool_new(mongoUri);
    mongoc_client_pool_set_max_pool_size(mongoPool, 120);
    mongoc_uri_destroy(mongoUri);

    // GET /mongodb/orders
    app().registerHandler(
        "/mongodb/orders",
        [mongoPool](const HttpRequestPtr& req,
           std::function<void(const HttpResponsePtr&)>&& callback) {
            mongoc_client_t *client = mongoc_client_pool_pop(mongoPool);
            mongoc_collection_t *coll = mongoc_client_get_collection(client, "ordersdb", "orders");

            bson_t *filter = bson_new();
            bson_t *opts = BCON_NEW(
                "skip",  BCON_INT64(1000),
                "limit", BCON_INT64(100),
                "projection", "{", "_id", BCON_INT32(0), "}"
            );

            mongoc_cursor_t *cursor = mongoc_collection_find_with_opts(coll, filter, opts, NULL);

            Json::Value ordersArray(Json::arrayValue);
            const bson_t *doc;

            while (mongoc_cursor_next(cursor, &doc)) {
                Json::Value order;
                bson_iter_t it;
                if (bson_iter_init(&it, doc)) {
                    while (bson_iter_next(&it)) {
                        const char *key = bson_iter_key(&it);
                        if (std::strcmp(key, "_id") == 0) continue;
                        bson_type_t t = bson_iter_type(&it);
                        if (t == BSON_TYPE_INT32) {
                            order[key] = bson_iter_int32(&it);
                        } else if (t == BSON_TYPE_INT64) {
                            order[key] = static_cast<Json::Int64>(bson_iter_int64(&it));
                        } else if (t == BSON_TYPE_UTF8) {
                            uint32_t len;
                            order[key] = bson_iter_utf8(&it, &len);
                        } else if (t == BSON_TYPE_DATE_TIME) {
                            int64_t ms = bson_iter_date_time(&it);
                            time_t sec = static_cast<time_t>(ms / 1000);
                            struct tm tm_val{};
                            gmtime_r(&sec, &tm_val);
                            char buf[32];
                            std::snprintf(buf, sizeof(buf),
                                "%04d-%02d-%02dT%02d:%02d:%02dZ",
                                tm_val.tm_year + 1900, tm_val.tm_mon + 1, tm_val.tm_mday,
                                tm_val.tm_hour, tm_val.tm_min, tm_val.tm_sec);
                            order[key] = buf;
                        }
                    }
                }
                ordersArray.append(order);
            }

            mongoc_cursor_destroy(cursor);
            bson_destroy(opts);
            bson_destroy(filter);
            mongoc_collection_destroy(coll);
            mongoc_client_pool_push(mongoPool, client);

            auto resp = HttpResponse::newHttpJsonResponse(ordersArray);
            callback(resp);
        },
        {Get}
    );

    app().setLogLevel(trantor::Logger::kWarn);
    app().addListener("0.0.0.0", 8000);
    app().setThreadNum(14);
    app().run();

    mongoc_cleanup();
    return 0;
}
