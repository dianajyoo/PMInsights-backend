class CreateSleeplogs < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeplogs do |t|
      t.date :dateOfSleep
      t.integer :duration
      t.integer :efficiency
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
