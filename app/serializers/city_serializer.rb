class CitySerializer < ActiveModel::Serializer
    attributes :id, :name, :country_id

    belongs_to :country
    has_many :appointments
end