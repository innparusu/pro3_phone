class Lecture < ActiveRecord::Base
    has_many :entries
    belongs_to :room
    belongs_to :period
    has_many :lates

    has_many :users, through:  :entries
    has_many :users, through: :lates
end
