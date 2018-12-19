class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :dateOfBirth, :height, :weight, :encodedId
end
