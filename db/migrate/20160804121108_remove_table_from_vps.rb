class RemoveTableFromVps < ActiveRecord::Migration
  def change
    remove_column :vps, :client_id
  end
end
