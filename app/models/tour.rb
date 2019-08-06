class Tour < ApplicationRecord
  
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user
  has_many :comments, dependent: :destroy
    has_many :favorites, foreign_key: 'tour_id', dependent: :destroy
  has_many :users, through: :favorites
  
 
  validates :user_id,presence:true
  acts_as_taggable            
  


  
   def self.search(search)
      return Tour.all unless search
      Tour.where(['tourcontent LIKE ?', "%#{search}%"])
    end
  
end
