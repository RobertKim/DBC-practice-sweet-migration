class AddColumnArticles < ActiveRecord::Migration
  def change
    add_column :articles, :category_id, :integer
    rename_column :articles, :category, :cat
    rename_column :articles, :tags, :tgs
  end
end
