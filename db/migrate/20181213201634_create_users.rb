class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstName
      t.date :dateOfBirth
      t.integer :height
      t.integer :weight
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
