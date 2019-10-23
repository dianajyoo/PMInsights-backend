class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users, :primary_key => :encoded_id do |t|
      t.string :firstName
      # t.string :encoded_id, :null => false

      t.timestamps
    end
    
    change_column :users, :encoded_id, :string
  end
end
