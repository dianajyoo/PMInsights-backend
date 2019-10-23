class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :goalDate
      t.string :goal
      t.string :user_id
      # t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
