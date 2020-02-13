class AddPackagesToTiers < ActiveRecord::Migration[6.0]
  def change
    add_column :tiers, :package, :string
  end
end
