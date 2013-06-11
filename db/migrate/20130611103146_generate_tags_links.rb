class GenerateTagsLinks < ActiveRecord::Migration
  def change
    Article.all.each do |article|
      tags = article.tgs.split(", ")
      tags.each do |tag|
        article.tags << Tag.find_by_name(tag)
      end
    end
  end
end
