class SelectionSerializer < ActiveModel::Serializer
  attributes :id, :car_id
  belongs_to :user
  belongs_to :car
end
