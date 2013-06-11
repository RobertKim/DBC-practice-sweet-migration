class GenerateCategories < ActiveRecord::Migration
  def change
    Article.all.each do |article|
      cat = Category.create(name: article.cat)
    end
  end
end
