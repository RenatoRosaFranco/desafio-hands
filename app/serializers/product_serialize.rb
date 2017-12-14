class ProductSerializer < ActiveModel::Serializer
  attributes :id, :logo, :name, :description
end
