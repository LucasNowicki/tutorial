class CreateVps < ActiveRecord::Migration
  def change
    create_table :vps do |t|
      t.string :name
      t.integer :client_id

      t.timestamps null: false
    end
    add_index :vps, :client_id
  end
end
