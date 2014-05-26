class User < ActiveRecord::Base
    has_many :entries
    has_many :lates

    has_many :lectures, through: :entries
    has_many :lectures, through: :lates
end
