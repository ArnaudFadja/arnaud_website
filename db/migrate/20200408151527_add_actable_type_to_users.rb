class AddActableTypeToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :actable_type, :string
  end
end
