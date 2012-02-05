class Article < ActiveRecord::Base
  has_many :comments, :order => 'published_at DESC',
           :dependent => :destroy
  has_many :taggings, :dependent => :destroy
  has_many :categories, :through => :taggings
  
  scope :recent, order('position DESC')
  
  validates :title, :introduction, :description, :image_url, :footnotes, presence: true
  validates :title, uniqueness: true
  validates :image_url, allow_blank: true, format: {
    with:    %r{\.(gif|jpg|png)$}i,
    message: 'must be a URL for GIF, JPG or PNG image.' }
    
  def long_title
    "#{title} - #{published_at}"
  end

end
