class SleeplogSerializer < ActiveModel::Serializer
  attributes :id, :dateOfSleep, :duration, :efficiency
  has_one :user
end
