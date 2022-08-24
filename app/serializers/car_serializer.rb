class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :photo, :description, :color

  has_many :selections
  has_many :users, through: :selections
end
