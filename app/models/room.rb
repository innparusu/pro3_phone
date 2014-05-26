class Room < ActiveRecord::Base
    has_many :lectures
end
