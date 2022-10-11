class AddpaperUrlToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :paperUrl, :string
  end
end
