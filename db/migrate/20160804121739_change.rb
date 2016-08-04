class Change < ActiveRecord::Migration
  def change
    rename_table :vps, :vp_servers
  end
end
