class User < ApplicationRecord
    has_many :closets
    has_many :clothings, through: :closets
    has_many :outfits
end
