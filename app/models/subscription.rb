class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :gym

    validates_uniqueness_of :user_id, :scope => :gym_id
end
