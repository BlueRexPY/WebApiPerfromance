class ApiController < ApplicationController
  def hello
    render json: { message: "Hello, World!" }
  end

  def orders
    result = ActiveRecord::Base.connection.exec_query(
      "SELECT id, customer_id, total_cents, status, created_at FROM orders LIMIT 100 OFFSET 1000"
    )
    
    orders = result.rows.map do |row|
      {
        id: row[0],
        customer_id: row[1],
        total_cents: row[2],
        status: row[3],
        created_at: row[4]
      }
    end
    
    render json: orders
  end
end
