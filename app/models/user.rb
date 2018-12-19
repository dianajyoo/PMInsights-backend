class User < ApplicationRecord
  has_many :sleeplogs
  has_many :heartrates
  has_many :goals

  # has_secure_password
end
