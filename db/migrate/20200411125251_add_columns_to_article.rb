class AddColumnsToArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :description, :text
    add_column :articles, :date, :date
    add_column :articles, :conferenceName, :string
  end
end
