class Store < ApplicationRecord

    has_many :orders, dependent: :destroy
    has_many :flowers, through: :orders

    belongs_to :user

    def total
        self.flowers.inject(0){|sum, x| sum + x.price}
    end
end
