class Comment < ActiveRecord::Base
  belongs_to :article, :counter_cache => true
  belongs_to :user
  
  validates_presence_of :content, :article_id
  
  scope :recent, order("created_at DESC")
  
end
