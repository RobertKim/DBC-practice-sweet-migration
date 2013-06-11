class GenerateCategoriesLinks < ActiveRecord::Migration
  def change    
    Article.all.each do |article|
      cat = Category.find_by_name(article.cat)
      article.update_attribute(:category_id, cat.id)
    end
  end
end
