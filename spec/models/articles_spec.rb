require 'spec_helper'

describe 'articles'  do

  let (:article) { create(:article) }
  let (:tag1) { create(:tag) }
  let (:tag2) { create(:tag) }

    
    before do
      article.tags << tag1
      article.tags << tag2
      visit root_path
    end

    it "should have a category name" do
      article.category.name
    end

    it "should have the article title" do
      article.title
    end

    it "should have tags" do
      article.tags
    end

end 
