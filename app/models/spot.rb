class Spot < ApplicationRecord
  belongs_to :tour, inverse_of: :spots
  has_many_attached :images
end
