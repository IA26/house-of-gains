class RemoveAgeAndBioFromUsers < ActiveRecord::Migration[6.0]
  def change

    remove_column :users, :age, :integer

    remove_column :users, :bio, :text
  end
end
