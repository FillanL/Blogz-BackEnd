class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def show
  end

  def create
  article= Article.create(article_params)
  article.user_id = 1
  article.save
    # byebug
  end

  private
  def article_params
    params.require(:article).permit(:title,:keyword,:category,:content,:user_id)
  end
end