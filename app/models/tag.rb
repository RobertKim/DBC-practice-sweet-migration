class Tag < ActiveRecord::Base
  
  has_many :articles_tags
  has_many :articles, through: :articles_tags
  
  attr_accessible :name
end
