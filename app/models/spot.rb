class Spot < ApplicationRecord
  belongs_to :tour
  has_many_attached :images
end
