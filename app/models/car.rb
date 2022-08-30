class Car < ApplicationRecord
  has_many :appointments

  has_many :selections, dependent: :destroy
  has_many :users, through: :selections, dependent: :destroy
end
