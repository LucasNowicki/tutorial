class Client < ActiveRecord::Base
    belongs_to :broker
    belongs_to :server
    belongs_to :service
    belongs_to :vp_server, foreign_key: "vp_server_id"
end
