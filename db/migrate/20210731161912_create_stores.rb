class CreateStores < ActiveRecord::Migration[6.1]
  def change
    create_table :stores do |t|
      t.string :address
      t.string :image_url
      t.integer :user_id
      t.integer :zipcode

      t.timestamps
    end
  end
end
