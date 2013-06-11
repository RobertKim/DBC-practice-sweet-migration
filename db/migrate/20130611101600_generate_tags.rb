class GenerateTags < ActiveRecord::Migration
  def change
    Article.all.each do |article|
      tags = article.tgs.split(", ")
      tags.each do |tag|
        Tag.create(name: tag)
      end
    end
  end
end
