class GoalSerializer < ActiveModel::Serializer
  attributes :id, :goalDate, :goal
  has_one :user
end
