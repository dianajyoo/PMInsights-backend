class User < ApplicationRecord
  has_many :sleeplogs
  has_many :heartrates
end
