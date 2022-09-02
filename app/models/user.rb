class User < ApplicationRecord
  has_secure_password

  has_many :appointments, dependent: :destroy
  has_many :sellers, through: :appointments, dependent: :destroy
  has_many :cars, through: :appointments, dependent: :destroy

  has_many :selections, dependent: :destroy
  has_many :cars, through: :selections, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true, length: { in: 3..250 }
  validates :age, numericality: { in: 18..100 }
end
