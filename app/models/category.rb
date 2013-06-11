class Category < ActiveRecord::Base
  has_many :articles
  validates :name, uniqueness: true, presence: true

  attr_accessible :name
end
