class User < ActiveRecord::Base
    has_many :entry
    has_many :late

    has_many :lecture, through: :entry
    has_many :lecture, through: :late
end
