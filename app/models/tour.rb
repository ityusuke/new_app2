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
    if search
      where(['name LIKE ?', "%#{search}%"]) 
    else
      all 
    end
  end
  
  
  
end
