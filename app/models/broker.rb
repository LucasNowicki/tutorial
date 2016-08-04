class Broker < ActiveRecord::Base
    has_many :clients
    has_many :servers
end
