class UserSerializer < ActiveModel::Serializer
    attributes :name, :gender, :username, :age, :model_id, :password, :id, :image

    has_many :closets
    has_many :clothings, through: :closets
    has_many :outfits
    # has_many :outfit_clothings, through: :outfits
end
