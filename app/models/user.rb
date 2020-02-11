class User < ApplicationRecord
    has_many :subscriptions
    has_many :gyms, through: :subscriptions
end
