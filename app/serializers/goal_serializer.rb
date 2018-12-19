class GoalSerializer < ActiveModel::Serializer
  attributes :id, :goalDate, :bedtimeTarget, :wakeupTarget
  has_one :user
end
