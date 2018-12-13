class CreateSleepcycles < ActiveRecord::Migration[5.2]
  def change
    create_table :sleepcycles do |t|
      t.integer :wake
      t.integer :light
      t.integer :rem
      t.integer :deep
      t.references :sleeplog, foreign_key: true

      t.timestamps
    end
  end
end
