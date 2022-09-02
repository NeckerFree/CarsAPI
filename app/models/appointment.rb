class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :seller
  belongs_to :car
  belongs_to :city

  validates :branch, presence: true, length: { in: 3..250 }
  validates :duration, numericality: { in: 1..1000 }
end
