class UserSerializer < ActiveModel::Serializer
    attributes :name, :gender, :username, :age, :model_id, :password, :id

    has_many :closets
    has_many :clothings, through: :closets
    has_many :outfits
end
