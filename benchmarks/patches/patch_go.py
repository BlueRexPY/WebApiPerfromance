import os
import re

services = ["GoChi", "GoEcho", "GoFiber", "GoGin", "GoNetHttp"]

grpc_impl = """
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
"""

sse_imports = 'import (\n\t"net"\n\t"fmt"\n\t"google.golang.org/grpc"\n\tpb "app/api"\n'

for svc in services:
    with open(f"apps/{svc}/main.go", "r") as f:
        src = f.read()

    # 1. Add imports
    src = src.replace("import (", sse_imports, 1)

    # 2. Add gRPC server start in main()
    # Find something like: `log.Println("Starting` or `log.Printf("Starting` and insert gRPC spawn before it
    grpc_start = """
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
"""
    # Replace the HTTP server start block with starting gRPC first
    if "log.Println(\"Starting" in src:
        src = src.replace('log.Println("Starting', grpc_start + '\n\tlog.Println("Starting')
    elif "log.Fatal(app.Listen" in src:
        src = src.replace('log.Fatal(app.Listen', grpc_start + '\n\tlog.Fatal(app.Listen')
    
    # 3. Add SSE handlers and register routes
    if svc == "GoChi":
        handlers = """
func sseHelloHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	fmt.Fprintf(w, "data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n")
	w.(http.Flusher).Flush()
}

func sseOrdersHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	rows, _ := pool.Query(r.Context(), "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
	defer rows.Close()
	flusher := w.(http.Flusher)
	for rows.Next() {
		var o Order
		rows.Scan(&o.ID, &o.CustomerID, &o.TotalCents, &o.Status, &o.CreatedAt)
		b, _ := json.Marshal(o)
		fmt.Fprintf(w, "data: %s\\n\\n", string(b))
	}
	flusher.Flush()
}
"""
        src = src.replace('r.Get("/ws/orders", wsOrdersHandler)', 'r.Get("/ws/orders", wsOrdersHandler)\n\tr.Get("/sse/hello", sseHelloHandler)\n\tr.Get("/sse/orders", sseOrdersHandler)')
        src += handlers
        
    elif svc == "GoEcho":
        handlers = """
func sseHelloHandler(c echo.Context) error {
	w := c.Response()
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	fmt.Fprintf(w, "data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n")
	w.Flush()
	return nil
}

func sseOrdersHandler(c echo.Context) error {
	w := c.Response()
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
		fmt.Fprintf(w, "data: %s\\n\\n", string(b))
	}
	w.Flush()
	return nil
}
"""
        src = src.replace('e.GET("/ws/orders", wsOrdersHandler)', 'e.GET("/ws/orders", wsOrdersHandler)\n\te.GET("/sse/hello", sseHelloHandler)\n\te.GET("/sse/orders", sseOrdersHandler)')
        src += handlers
        
    elif svc == "GoFiber":
        handlers = """
func sseHelloHandler(c *fiber.Ctx) error {
	c.Set("Content-Type", "text/event-stream")
	c.Set("Cache-Control", "no-cache")
	c.Set("Connection", "keep-alive")
	c.Set("X-Accel-Buffering", "no")
	c.Context().SetBodyStreamWriter(func(w *bufio.Writer) {
		fmt.Fprintf(w, "data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n")
		w.Flush()
	})
	return nil
}

func sseOrdersHandler(c *fiber.Ctx) error {
	c.Set("Content-Type", "text/event-stream")
	c.Set("Cache-Control", "no-cache")
	c.Set("Connection", "keep-alive")
	c.Set("X-Accel-Buffering", "no")
	
	c.Context().SetBodyStreamWriter(func(w *bufio.Writer) {
		rows, _ := pool.Query(context.Background(), "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
		defer rows.Close()
		for rows.Next() {
			var o Order
			rows.Scan(&o.ID, &o.CustomerID, &o.TotalCents, &o.Status, &o.CreatedAt)
			b, _ := json.Marshal(o)
			fmt.Fprintf(w, "data: %s\\n\\n", string(b))
		}
		w.Flush()
	})
	return nil
}
"""
        src = src.replace('"bufio"', '') # to avoid double bufio if already there
        src = src.replace('import (', 'import (\n\t"bufio"\n', 1)
        src = src.replace('app.Get("/ws/orders"', 'app.Get("/sse/hello", sseHelloHandler)\n\tapp.Get("/sse/orders", sseOrdersHandler)\n\tapp.Get("/ws/orders"')
        src += handlers
        
    elif svc == "GoGin":
        handlers = """
func sseHelloHandler(c *gin.Context) {
	w := c.Writer
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	fmt.Fprintf(w, "data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n")
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
		fmt.Fprintf(w, "data: %s\\n\\n", string(b))
	}
	w.Flush()
}
"""
        src = src.replace('r.GET("/ws/orders", wsOrdersHandler)', 'r.GET("/ws/orders", wsOrdersHandler)\n\tr.GET("/sse/hello", sseHelloHandler)\n\tr.GET("/sse/orders", sseOrdersHandler)')
        src += handlers
        
    elif svc == "GoNetHttp":
        handlers = """
func sseHelloHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	fmt.Fprintf(w, "data: {\\\"message\\\":\\\"Hello, World!\\\"}\\n\\n")
	w.(http.Flusher).Flush()
}

func sseOrdersHandler(w http.ResponseWriter, r *http.Request) {
	w.Header().Set("Content-Type", "text/event-stream")
	w.Header().Set("Cache-Control", "no-cache")
	w.Header().Set("Connection", "keep-alive")
	w.Header().Set("X-Accel-Buffering", "no")
	rows, _ := pool.Query(r.Context(), "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000")
	defer rows.Close()
	flusher := w.(http.Flusher)
	for rows.Next() {
		var o Order
		rows.Scan(&o.ID, &o.CustomerID, &o.TotalCents, &o.Status, &o.CreatedAt)
		b, _ := json.Marshal(o)
		fmt.Fprintf(w, "data: %s\\n\\n", string(b))
	}
	flusher.Flush()
}
"""
        src = src.replace('http.HandleFunc("/ws/orders", wsOrdersHandler)', 'http.HandleFunc("/ws/orders", wsOrdersHandler)\n\thttp.HandleFunc("/sse/hello", sseHelloHandler)\n\thttp.HandleFunc("/sse/orders", sseOrdersHandler)')
        src += handlers

    src += "\n" + grpc_impl
    with open(f"apps/{svc}/main.go", "w") as f:
        f.write(src)
    print(f"Updated {svc}")
