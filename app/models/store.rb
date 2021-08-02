class Store < ApplicationRecord
    has_many :profiles
    # https://stackoverflow.com/questions/15098586/rails-one-to-one-relationship

    has_many :orders, dependent: :destroy
    has_many :flowers, through: :orders
end
