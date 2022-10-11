class Protagonist < ApplicationRecord
  acts_as :user
  has_one_attached :avatar
end
