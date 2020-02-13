class CreateTiers < ActiveRecord::Migration[6.0]
  def change
    create_table :tiers do |t|
      t.string :bronze
      t.string :silver
      t.string :gold

      t.timestamps
    end
  end
end
