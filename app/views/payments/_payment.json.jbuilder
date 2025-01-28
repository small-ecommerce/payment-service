json.extract! payment, :id, :order_id, :customer_id, :amount, :currency, :payment_method, :payment_status, :transaction_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
