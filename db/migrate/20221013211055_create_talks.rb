class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      # t.string :title
      # t.string :description
      # t.string :year

      # t.timestamps
    end
  end
end
