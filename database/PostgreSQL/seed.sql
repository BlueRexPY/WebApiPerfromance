INSERT INTO orders (customer_id, total_cents, status, created_at)
SELECT 
    (random() * 1000)::int + 1 AS customer_id,
    (random() * 99900)::int + 100 AS total_cents,
    CASE (random() * 4)::int
        WHEN 0 THEN 'pending'
        WHEN 1 THEN 'processing'
        WHEN 2 THEN 'completed'
        WHEN 3 THEN 'cancelled'
        ELSE 'refunded'
    END AS status,
    NOW() - (random() * interval '365 days') AS created_at
FROM generate_series(1, 10000);
