class OrderSerializer < ActiveModel::Serializer
  attributes :id, :store_id, :flower_id

  belongs_to :store
  belongs_to :flower

end
