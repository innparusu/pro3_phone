class Lecture < ActiveRecord::Base
    has_many :entry
    belongs_to :room
    belongs_to :period
    has_many :late

    has_many :user, :through => :entry
    has_many :user, :through => :late
end
