class User < ApplicationRecord
  self.primary_key = :encoded_id
  has_many :goals
end
