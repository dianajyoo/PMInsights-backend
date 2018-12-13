class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :dateOfBirth, :height, :weight, :username, :password_digest
end
