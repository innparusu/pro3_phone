class User < ActiveRecord::Base
    has_many :entries
    has_many :lates

    has_many :lectures, through: :entry
    has_many :lectures, through: :late
end
