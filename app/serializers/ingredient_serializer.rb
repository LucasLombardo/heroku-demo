class IngredientSerializer < ActiveModel::Serializer
  attributes :id, :name, :unit
  belongs_to :recipe
end
