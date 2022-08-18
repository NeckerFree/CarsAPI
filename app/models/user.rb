class User < ApplicationRecord
    has_secure_password

    has_many :appointments, dependent: :destroy

    has_many :sellers, through: :appointments
    has_many :cars, through: :appointments

end