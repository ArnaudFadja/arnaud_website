class AddActableIdToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :actable_id, :integer
  end
end
