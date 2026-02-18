#include <drogon/drogon.h>
#include <json/json.h>
#include <cstdlib>
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
        80,  // connection pool size
        "",  // filename (not used for postgresql)
        "default",
        false,  // isFast
        "utf8",  // characterSet
        10.0,   // timeout
        true    // autoBatch
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
    
    // GET /orders - Returns orders from database
    app().registerHandler(
        "/orders",
        [](const HttpRequestPtr& req,
           std::function<void(const HttpResponsePtr&)>&& callback) {
            auto dbClient = app().getDbClient();
            
            dbClient->execSqlAsync(
                "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
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
                },
                100,  // limit
                1000  // offset
            );
        },
        {Get}
    );
    
    std::cout << "Starting server on 0.0.0.0:8000" << std::endl;
    
    app().setLogLevel(trantor::Logger::kWarn);
    app().addListener("0.0.0.0", 8000);
    app().setThreadNum(14);
    app().run();
    
    return 0;
}
