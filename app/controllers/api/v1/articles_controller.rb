class Api::V1::ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def show
  end

  def create
  article= Article.find_or_create_by(article_params)
  
    render json: ArticleSerializer.new(article)
  end

  def delete
  end

  private
  def article_params
    params.require(:article).permit(:title,:keyword,:category,:content,:user_id)
  end
end