class AddCheckboxToUserSignup < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :restaurant_owner_accepted, :boolean, :default => false
  end
end
