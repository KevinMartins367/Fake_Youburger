class Api::V1::FoodSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :quantity, :price, :thumbnail_key,
  :category

end
