class SleepcycleSerializer < ActiveModel::Serializer
  attributes :id, :wake, :light, :rem, :deep
  has_one :sleeplog
end
