class Country < ApplicationRecord
  has_many :cities

  validates :name, presence: true, length: { in: 3..100 }
end
