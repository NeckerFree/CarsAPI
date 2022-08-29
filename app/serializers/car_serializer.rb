class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :photo, :description, :color, :price, :brand

  has_many :selections
  has_many :users, through: :selections
end
