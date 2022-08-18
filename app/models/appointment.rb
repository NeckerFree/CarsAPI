class Appointment < ApplicationRecord

    belongs_to :user
    belongs_to :seller
    belongs_to :car
    belongs_to :city
end
