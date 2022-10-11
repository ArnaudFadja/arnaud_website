class TranslateArticles < ActiveRecord::Migration[6.0]
  def change
    reversible do |dir| # <=== 1
      dir.up do
        Article.create_translation_table!({
                                            content: :text
                                          }, {
                                              migrate_data: true, # <=== 4
                                              remove_source_columns: true # <=== 5
                                          })
      end
      dir.down do
        Article.drop_translation_table! migrate_data: true # <=== 6
      end
    end
  end
end
