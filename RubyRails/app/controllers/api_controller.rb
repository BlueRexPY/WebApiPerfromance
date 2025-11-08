class ApiController < ApplicationController
  def hello
    render json: { message: "Hello, World!" }
  end

  def orders
    sql = <<-SQL
      SELECT id, customer_id, total_cents, status, created_at
      FROM orders
      LIMIT 100 OFFSET 1000
    SQL
    
    result = ActiveRecord::Base.connection.exec_query(sql)
    
    orders = result.map do |row|
      {
        id: row['id'],
        customer_id: row['customer_id'],
        total_cents: row['total_cents'],
        status: row['status'],
        created_at: row['created_at']
      }
    end
    
    render json: orders
  end
end
