class User < ApplicationRecord
    has_many :subscriptions
    has_many :gyms, through: :subscriptions

    validates :name, presence: true
    validates :name, uniqueness: true 

    has_secure_password
end
