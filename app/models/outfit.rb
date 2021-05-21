class Outfit < ApplicationRecord
    belongs_to :user
    has_many :outfit_clothings
    has_many :clothings, through: :outfit_clothings
end
