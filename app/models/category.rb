class Category < ActiveRecord::Base
  has_many :taggings, :dependent => :destroy
  has_many :articles, :through => :taggings
  
  default_scope order('categories.name')
  
end
