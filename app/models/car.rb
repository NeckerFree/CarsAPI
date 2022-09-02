class Car < ApplicationRecord
  has_many :appointments

  has_many :selections, dependent: :destroy
  has_many :users, through: :selections, dependent: :destroy

  validates :model, presence: true, length: { in: 2..100 }
  validates :color, presence: true, length: { in: 3..100 }
  validates :description, presence: true, length: { in: 3..3000 }
  validates :brand, presence: true, length: { in: 2..100 }
  validates :photo, presence: true, length: { in: 3..250 }
end
