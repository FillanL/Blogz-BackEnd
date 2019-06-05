class Api::V1::UsersController < ApplicationController
  def index
   user = User.all
   render json: user
  end

  def show
  end

  def create
    usr = User.find_or_create_by(user_params)
    #  byebug
  end
  
  def delete
    
  end

  private
  def user_params
    params.require(:user).permit(:first_name,:last_name,:username,:password,:location,:img_url)
  end
end
