class HeartrateSerializer < ActiveModel::Serializer
  attributes :id, :date, :restingHeartRate
  has_one :user
end
