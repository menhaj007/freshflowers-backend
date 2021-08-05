class Order < ApplicationRecord
    belongs_to :store
    belongs_to :flower

    
end
