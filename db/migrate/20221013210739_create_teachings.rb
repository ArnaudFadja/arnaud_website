class CreateTeachings < ActiveRecord::Migration[6.0]
  def change
    create_table :teachings do |t|
      # t.string :title
      # t.string :description
      # t.string :year

      # t.timestamps
    end
  end
end
