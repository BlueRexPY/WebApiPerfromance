package main

import (
	"context"
	"log"
	"os"
	"time"

	"github.com/gofiber/fiber/v2"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
	"go.mongodb.org/mongo-driver/bson"
	"go.mongodb.org/mongo-driver/mongo"
	"go.mongodb.org/mongo-driver/mongo/options"
)

type HelloResponse struct {
	Message string `json:"message"`
}

type Order struct {
	ID         int       `json:"id"        bson:"id"`
	CustomerID int       `json:"customer_id" bson:"customer_id"`
	TotalCents int       `json:"total_cents" bson:"total_cents"`
	Status     string    `json:"status"     bson:"status"`
	CreatedAt  time.Time `json:"created_at" bson:"created_at"`
}

var pool *pgxpool.Pool
var mongoDB *mongo.Database

func main() {
	// Load environment variables
	godotenv.Load()

	// Get database URL
	databaseURL := os.Getenv("DATABASE_URL")
	if databaseURL == "" {
		log.Fatal("DATABASE_URL environment variable is not set")
	}

	// Create PostgreSQL connection pool
	config, err := pgxpool.ParseConfig(databaseURL)
	if err != nil {
		log.Fatalf("Unable to parse DATABASE_URL: %v", err)
	}

	config.MaxConns = 120
	config.MinConns = 10

	pool, err = pgxpool.NewWithConfig(context.Background(), config)
	if err != nil {
		log.Fatalf("Unable to create connection pool: %v", err)
	}
	defer pool.Close()

	// Create MongoDB client
	mongoURL := os.Getenv("MONGO_URL")
	if mongoURL == "" {
		mongoURL = "mongodb://mongodb:27017"
	}

	mongoOpts := options.Client().ApplyURI(mongoURL).SetMaxPoolSize(120)
	mongoClient, err := mongo.Connect(context.Background(), mongoOpts)
	if err != nil {
		log.Fatalf("Unable to connect to MongoDB: %v", err)
	}
	defer mongoClient.Disconnect(context.Background())

	mongoDB = mongoClient.Database("ordersdb")

	// Create Fiber app
	app := fiber.New(fiber.Config{
		Prefork:       false,
		CaseSensitive: true,
		StrictRouting: true,
		ServerHeader:  "Fiber",
		AppName:       "GoFiber API",
	})

	// Routes
	app.Get("/", helloHandler)
	app.Get("/postgresql/orders", ordersHandler)
	app.Get("/mongodb/orders", mongoOrdersHandler)

	// Start server
	log.Println("Starting server on :8000")
	if err := app.Listen(":8000"); err != nil {
		log.Fatalf("Error starting server: %v", err)
	}
}

func helloHandler(c *fiber.Ctx) error {
	return c.JSON(HelloResponse{
		Message: "Hello, World!",
	})
}

func ordersHandler(c *fiber.Ctx) error {
	query := `
		SELECT id, customer_id, total_cents, status, created_at
		FROM orders
		LIMIT $1
		OFFSET $2
	`

	rows, err := pool.Query(context.Background(), query, 100, 1000)
	if err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{
			"error": err.Error(),
		})
	}
	defer rows.Close()

	orders := make([]Order, 0, 100)
	for rows.Next() {
		var order Order
		err := rows.Scan(
			&order.ID,
			&order.CustomerID,
			&order.TotalCents,
			&order.Status,
			&order.CreatedAt,
		)
		if err != nil {
			return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{
				"error": err.Error(),
			})
		}
		orders = append(orders, order)
	}

	if err := rows.Err(); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{
			"error": err.Error(),
		})
	}

	return c.JSON(orders)
}

func mongoOrdersHandler(c *fiber.Ctx) error {
	coll := mongoDB.Collection("orders")

	projection := bson.D{{Key: "_id", Value: 0}}
	opts := options.Find().
		SetProjection(projection).
		SetSkip(1000).
		SetLimit(100)

	cursor, err := coll.Find(context.Background(), bson.D{}, opts)
	if err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{
			"error": err.Error(),
		})
	}
	defer cursor.Close(context.Background())

	orders := make([]Order, 0, 100)
	if err := cursor.All(context.Background(), &orders); err != nil {
		return c.Status(fiber.StatusInternalServerError).JSON(fiber.Map{
			"error": err.Error(),
		})
	}

	return c.JSON(orders)
}
