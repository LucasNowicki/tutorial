class CreateServers < ActiveRecord::Migration
  def change
    create_table :servers do |t|
      t.string :name
      t.string :ip
      t.integer :broker_id

      t.timestamps null: false
    end
    add_index :servers, :broker_id
  end
end
