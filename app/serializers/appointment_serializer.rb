class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :car_id, :seller_id, :city_id, :duration, :branch, :date_for

  belongs_to :user
  belongs_to :seller
  belongs_to :car
  belongs_to :city
end
