class UserSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :encoded_id
end
