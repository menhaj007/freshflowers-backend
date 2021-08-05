class RemoveOrderTotalFromOrder < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :order_total, :float
  end
end
