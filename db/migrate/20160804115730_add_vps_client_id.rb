class AddVpsClientId < ActiveRecord::Migration
  def change
    add_column :clients, :vps_client_id, :string
  end
end
