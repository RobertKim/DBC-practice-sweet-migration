class Article < ActiveRecord::Base

  belongs_to :category
  has_many :tags, through: :articles_tags
  has_many :articles_tags

  before_create :set_url
  attr_accessible :cat, :tgs
  attr_accessible :title, :description, :category, :tags
  private
  def set_url
    time = Time.now
    self.url = "articles/#{time.month}/#{time.day}/#{time.year}/#{self.title.downcase.gsub(' ', '-')}"
  end
end
