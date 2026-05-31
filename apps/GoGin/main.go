package main

import (
	"net"
	"fmt"
	"google.golang.org/grpc"
	pb "app/api"

	"context"
	"encoding/json"
	"log"
	"net/http"
	"os"
	"time"

	"github.com/gin-gonic/gin"
	"github.com/gorilla/websocket"
	"github.com/jackc/pgx/v5/pgxpool"
	"github.com/joho/godotenv"
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

var upgrader = websocket.Upgrader{
	CheckOrigin: func(r *http.Request) bool { return true },
}

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

	gin.SetMode(gin.ReleaseMode)

	r := gin.New()

	r.GET("/", helloHandler)
	r.GET("/orders", ordersHandler)
	r.GET("/ws/echo", wsEchoHandler)
	r.GET("/ws/orders", wsOrdersHandler)
	r.GET("/sse/hello", sseHelloHandler)
	r.GET("/sse/orders", sseOrdersHandler)

	
	go func() {
		lis, err := net.Listen("tcp", ":9000")
		if err != nil {
			log.Fatalf("failed to listen: %v", err)
		}
		s := grpc.NewServer()
		pb.RegisterApiServiceServer(s, &apiServer{})
		log.Println("gRPC server listening on :9000")
		if err := s.Serve(lis); err != nil {
			log.Fatalf("failed to serve: %v", err)
		}
	}()

	log.Println("Starting Gin server on :8000")
	if err := r.Run(":8000"); err != nil {
		log.Fatalf("Error starting server: %v", err)
	}
}

func wsEchoHandler(c *gin.Context) {
	conn, err := upgrader.Upgrade(c.Writer, c.Request, nil)
	if err != nil {
		return
	}
	defer conn.Close()
	for {
		mt, msg, err := conn.ReadMessage()
		if err != nil {
			break
		}
		if err := conn.WriteMessage(mt, msg); err != nil {
			break
		}
	}
}

func wsOrdersHandler(c *gin.Context) {
	conn, err := upgrader.Upgrade(c.Writer, c.Request, nil)
	if err != nil {
		return
	}
	defer conn.Close()
	for {
		_, _, err := conn.ReadMessage()
		if err != nil {
			break
		}
		rows, err := pool.Query(context.Background(),
			"SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT $1 OFFSET $2",
			100, 1000)
		if err != nil {
			_ = conn.WriteMessage(websocket.TextMessage, []byte("[]"))
			continue
		}
		orders := make([]Order, 0, 100)
		for rows.Next() {
			var o Order
			rows.Scan(&o.ID, &o.CustomerID, &o.TotalCents, &o.Status, &o.CreatedAt)
			orders = append(orders, o)
		}
		rows.Close()
		data, _ := json.Marshal(orders)
		if err := conn.WriteMessage(websocket.TextMessage, data); err != nil {
			break
		}
	}
}

func helloHandler(c *gin.Context) {
	c.JSON(http.StatusOK, HelloResponse{Message: "Hello, World!"})
}

func ordersHandler(c *gin.Context) {
	query := `
		SELECT id, customer_id, total_cents, status, created_at
		FROM orders
		LIMIT $1
		OFFSET $2
	`

	rows, err := pool.Query(context.Background(), query, 100, 1000)
	if err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}
	defer rows.Close()

	orders := make([]Order, 0, 100)
	for rows.Next() {
		var order Order
		if err := rows.Scan(
			&order.ID,
			&order.CustomerID,
			&order.TotalCents,
			&order.Status,
			&order.CreatedAt,
		); err != nil {
			c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
			return
		}
		orders = append(orders, order)
	}

	if err := rows.Err(); err != nil {
		c.JSON(http.StatusInternalServerError, gin.H{"error": err.Error()})
		return
	}

	c.JSON(http.StatusOK, orders)
}

func sseHelloHandler(c *gin.Context) {
	w := c.Writer
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	fmt.Fprintf(w, "data: {\"message\":\"Hello, World!\"}\n\n")
	w.Flush()
}

func sseOrdersHandler(c *gin.Context) {
	w := c.Writer
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	rows, _ := pool.Query(context.Background(), "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
	defer rows.Close()
	for rows.Next() {
		var o Order
		rows.Scan(&o.ID, &o.CustomerID, &o.TotalCents, &o.Status, &o.CreatedAt)
		b, _ := json.Marshal(o)
		fmt.Fprintf(w, "data: %s\n\n", string(b))
	}
	w.Flush()
}


type apiServer struct {
	pb.UnimplementedApiServiceServer
}

func (s *apiServer) SayHello(ctx context.Context, req *pb.HelloRequest) (*pb.HelloReply, error) {
	return &pb.HelloReply{Message: "Hello, World!"}, nil
}

func (s *apiServer) GetOrders(ctx context.Context, req *pb.GetOrdersRequest) (*pb.GetOrdersReply, error) {
	rows, err := pool.Query(ctx, "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
	if err != nil {
		return nil, err
	}
	defer rows.Close()

	var orders []*pb.Order
	for rows.Next() {
		var o Order
		rows.Scan(&o.ID, &o.CustomerID, &o.TotalCents, &o.Status, &o.CreatedAt)
		orders = append(orders, &pb.Order{
			Id:         int32(o.ID),
			CustomerId: int32(o.CustomerID),
			TotalCents: int32(o.TotalCents),
			Status:     o.Status,
			CreatedAt:  o.CreatedAt.Format(time.RFC3339),
		})
	}
	return &pb.GetOrdersReply{Orders: orders}, nil
}
