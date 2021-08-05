class User < ApplicationRecord
    has_secure_password

    has_one :store, dependent: :destroy

    validates :email, presence: true, uniqueness: true
    # validates :password, presence: true
    
end
