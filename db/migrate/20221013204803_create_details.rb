class CreateDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :details do |t|
      t.string :year
      t.actable # shortcut for t.integer :actable_id and t.string  :actable_type

      t.timestamps
    end

    reversible do |dir|
      dir.up do
        Detail.create_translation_table! title: :string, description: :text
      end

      dir.down do
        Detail.drop_translation_table!
      end
    end
  end
end
