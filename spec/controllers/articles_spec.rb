require 'spec_helper'

describe 'articles'  do

  let (:article) { create(:article) }
  let (:tag1) { create(:tag) }
  let (:tag2) { create(:tag) }

  context 'when on index' do
    
    before do
      article.tags << tag1
      article.tags << tag2
      visit root_path
    end

    it "should have a category name" do
      page.should have_content(article.category.name)
    end

    it "should have the article title" do
      page.should have_content(article.title)
    end

    it "article title should redirect to article" do
      click_link "#{article.title}"
      page.should have_content(article.description)
    end

  end

  context 'when on show' do
    
    before do
      article.tags << tag1
      article.tags << tag2
      visit article_path(article)
    end

    it "should have a category name" do
      page.should have_content(article.category.name)
    end

    it "should have the article title" do
      page.should have_content(article.title)
    end

    it "should have the article description" do
      page.should have_content(article.description)
    end

    it "should have the article tags" do
      page.should have_content(article.tags[0].name)
      page.should have_content(article.tags[1].name)
    end

  end
end 
