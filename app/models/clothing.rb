class Clothing < ApplicationRecord
    has_many :closets
    has_many :users, through: :closets
    has_many :outfit_clothings
    has_many :outfits, through: :outfit_clothings
end
