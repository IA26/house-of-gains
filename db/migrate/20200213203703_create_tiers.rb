class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.string :package
      t.integer :subscription_id
      t.timestamps
    end
  end
end
