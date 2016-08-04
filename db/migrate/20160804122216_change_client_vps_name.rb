class ChangeClientVpsName < ActiveRecord::Migration
  def change
    remove_column :clients, :vps_id
    add_column :clients, :vp_server_id, :string
  end
end
