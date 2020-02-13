class RemovePackagesFromTiers < ActiveRecord::Migration[6.0]
  def change

    remove_column :tiers, :bronze, :string

    remove_column :tiers, :silver, :string

    remove_column :tiers, :gold, :string
  end
end
