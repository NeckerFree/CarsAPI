class City < ApplicationRecord
  belongs_to :country

  has_many :appointments

  validates :name, presence: true, length: { in: 3..100 }
end
