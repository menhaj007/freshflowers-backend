class StoreSerializer < ActiveModel::Serializer
  attributes :id, :address, :image_url, :user_id, :zipcode
  has_many :orders
  has_many :flowers, through: :orders

  belongs_to :user
end
