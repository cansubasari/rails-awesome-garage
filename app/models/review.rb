class Review < ApplicationRecord
  belongs_to :car
  validates :comment, :rating, presence: true
end
