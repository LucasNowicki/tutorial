class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      
      t.string :name
      t.string :surname
      t.string :email
      t.string :telephone
      t.string :acc_number
      t.string :acc_password
      t.integer :broker_id
      t.integer :server_id
      t.integer :service_id
      t.integer :vps_id
      t.string :vps_password
      t.date :begin_date
      t.integer :period_months
      
      
      t.timestamps null: false
    end
    add_index :clients, :broker_id
    add_index :clients, :server_id
    add_index :clients, :service_id
    add_index :clients, :vps_id
  end
end
