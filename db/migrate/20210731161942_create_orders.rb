class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :store_id
      t.integer :flower_id
      t.float :order_total
      t.integer :quantity

      t.timestamps
    end
  end
end
