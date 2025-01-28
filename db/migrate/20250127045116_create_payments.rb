class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.uuid :order_id
      t.uuid :customer_id
      t.float :amount
      t.string :currency
      t.string :payment_method
      t.string :payment_status
      t.uuid :transaction_id

      t.timestamps
    end

    add_index :payments, :order_id
    add_index :payments, :customer_id
    add_index :payments, :transaction_id
  end
end
