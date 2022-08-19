class User < ApplicationRecord
    has_secure_password

    has_many :appointments, dependent: :destroy

    has_many :sellers, through: :appointments, dependent: :destroy
    has_many :cars, through: :appointments, dependent: :destroy

    validates :email, presence: true, uniqueness: true

end