class SellerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone

  has_many :appointments
  has_many :users, through: :appointments
end
