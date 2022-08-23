class CarSerializer < ActiveModel::Serializer
  attributes :id, :model, :photo

  has_many :selections
  has_many :users, through: :selections
end
