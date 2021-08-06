class FlowerSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :image_url, :occasion

  has_many :orders
  has_many :stores, through: :orders
end
