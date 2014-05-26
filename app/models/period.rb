class Period < ActiveRecord::Base
    has_many :lectures
    has_many :rooms, through: :lecture
end
