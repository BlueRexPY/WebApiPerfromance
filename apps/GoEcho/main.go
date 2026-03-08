package main

import (
	"context"
	"log"
	"net/http"
	"os"
	"time"

	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
	"github.com/labstack/echo/v4"
)

type HelloResponse struct {
	Message string `json:"message"`
}

type Order struct {
	ID         int       `json:"id"`
	CustomerID int       `json:"customer_id"`
	TotalCents int       `json:"total_cents"`
	Status     string    `json:"status"`
	CreatedAt  time.Time `json:"created_at"`
}

var pool *pgxpool.Pool

func main() {
	godotenv.Load()

	databaseURL := os.Getenv("DATABASE_URL")
	if databaseURL == "" {
		log.Fatal("DATABASE_URL environment variable is not set")
	}

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

	e := echo.New()
	e.HideBanner = true
	e.HidePort = true

	e.GET("/", helloHandler)
	e.GET("/orders", ordersHandler)

	log.Println("Starting Echo server on :8000")
	if err := e.Start(":8000"); err != nil && err != http.ErrServerClosed {
		log.Fatalf("Error starting server: %v", err)
	}
}

func helloHandler(c echo.Context) error {
	return c.JSON(http.StatusOK, HelloResponse{Message: "Hello, World!"})
}

func ordersHandler(c echo.Context) error {
	query := `
		SELECT id, customer_id, total_cents, status, created_at
		FROM orders
		LIMIT $1
		OFFSET $2
	`

	rows, err := pool.Query(context.Background(), query, 100, 1000)
	if err != nil {
		return c.JSON(http.StatusInternalServerError, map[string]string{"error": err.Error()})
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
			return c.JSON(http.StatusInternalServerError, map[string]string{"error": err.Error()})
		}
		orders = append(orders, order)
	}

	if err := rows.Err(); err != nil {
		return c.JSON(http.StatusInternalServerError, map[string]string{"error": err.Error()})
	}

	return c.JSON(http.StatusOK, orders)
}
