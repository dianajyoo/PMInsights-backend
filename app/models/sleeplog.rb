class Sleeplog < ApplicationRecord
  belongs_to :user
  has_many :sleepcycles
end
