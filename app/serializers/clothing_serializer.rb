class ClothingSerializer < ActiveModel::Serializer
    attributes :name, :image, :size, :gender, :category, :id
end