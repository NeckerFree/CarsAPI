class SelectionSerializer < ActiveModel::Serializer
  attributes :id, :car_id, :user_id
  belongs_to :user
  belongs_to :car
end
