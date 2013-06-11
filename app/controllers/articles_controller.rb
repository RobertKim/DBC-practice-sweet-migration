class ArticlesController < ApplicationController

  def index
    @articles = Article.all.group_by &:category
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    if @article.save
      redirect to(@article.url)
    else
      render :new
    end
  end
end
