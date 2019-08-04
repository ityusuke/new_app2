class Like < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  validates_uniqueness_of :tour_id, scope: :user_id
  validates :user_id,presence:true
  validates :tour_id,presence:true
end