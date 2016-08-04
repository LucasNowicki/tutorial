class Server < ActiveRecord::Base
    has_many :clients
    belongs_to :broker
end
