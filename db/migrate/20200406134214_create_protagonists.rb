class CreateProtagonists < ActiveRecord::Migration[6.0]
  def change
    create_table :protagonists do |t|
      t.string :profession
      t.string :department
      t.string :university
      t.string :edifice
      t.string :homeAddress
      t.string :workAddress
      t.string :homePhone
      t.string :workPhone

      t.timestamps
    end
  end
end
