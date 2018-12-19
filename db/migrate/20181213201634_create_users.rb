class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstName
      t.date :dateOfBirth
      t.integer :height
      t.integer :weight
      t.string :encodedId

      t.timestamps
    end
  end
end
