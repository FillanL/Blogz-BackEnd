class Api::V1::SavedArticlesController < ApplicationController
    def index
        saved =  SavedArticle.all
        render json: saved

    end

    def create
        saved = SavedArticle.find_or_create_by(user_id:params[:article][:user_id],article_id:params[:article][:article_id])
        
        render json: saved
    end

    def delete

    end
end
