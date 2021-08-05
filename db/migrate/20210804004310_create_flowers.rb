class CreateFlowers < ActiveRecord::Migration[6.1]
  def change
    create_table :flowers do |t|
      t.string :name
      t.float :price
      t.string :image_url
      t.string :occasion
      t.timestamps
    end
  end
end
