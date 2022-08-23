class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :selections
  has_many :cars, through: :selections
end
