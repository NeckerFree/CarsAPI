class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email

  has_many :appointments, dependent: :destroy
  has_many :sellers, through: :appointments, dependent: :destroy
  has_many :cars, through: :appointments, dependent: :destroy
  has_many :selections, dependent: :destroy
  has_many :cars, through: :selections, dependent: :destroy

end
