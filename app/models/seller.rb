class Seller < ApplicationRecord
  has_many :appointments

  has_many :users, through: :appointments

  validates :name, presence: true, length: { in: 3..250 }
end
