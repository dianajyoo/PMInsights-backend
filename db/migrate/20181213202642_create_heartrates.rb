class CreateHeartrates < ActiveRecord::Migration[5.2]
  def change
    create_table :heartrates do |t|
      t.date :date
      t.integer :restingHeartRate
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
