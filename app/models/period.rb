class Period < ActiveRecord::Base
    has_many :lecture
    has_many :room, :through => :lecture
end
