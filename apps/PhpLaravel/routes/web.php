<?php

use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Route;

Route::get('/', fn() => response()->json(['message' => 'Hello, World!']));

Route::get('/orders', function () {
    $orders = DB::select(
        'SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000'
    );
    return response()->json($orders);
});
