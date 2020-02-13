class AddSubscriptionsToTiers < ActiveRecord::Migration[6.0]
  def change
    add_column :tiers, :subscription_id, :integer
  end
end
