class Dog < ApplicationRecord
  has_one_attached :avatar
  validates :name, :motto, :avatar, presence: true
end
