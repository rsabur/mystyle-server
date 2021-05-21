class Users < ActiveModel::Serializer
    attributes :name, :gender, :username, :age, :model_id, :password

    has_many :closets
    has_many :clothings, through: :closets
    has_many :outfits
end
