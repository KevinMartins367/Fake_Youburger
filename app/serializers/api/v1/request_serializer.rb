class Api::V1::RequestSerializer < ActiveModel::Serializer
  attributes :id, :description, :total
end
