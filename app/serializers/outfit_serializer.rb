class OutfitSerializer < ActiveModel::Serializer
    attributes :user_id, :name, :id

    has_many :outfit_clothings
end