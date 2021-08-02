class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :address
      t.string :image_url
      t.integer :store_id
      t.integer :user_id

      t.timestamps
    end
  end
end