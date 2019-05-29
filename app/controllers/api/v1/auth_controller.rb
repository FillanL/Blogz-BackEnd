class Api::V1::AuthController < ApplicationController

    def create
        # byebug
        user = User.find_by(username:username_params["username"])

        if user && user.authenticate(username_params["password"])
            render json: {id: user.id, username: user.username}
        else
            render json: {error:"user or password could not be found"}, status: 401
        end
    end

    def show
        token = request.headers["Authenticate"]

        user = User.find_by(id: token)

        if user 
            render json: {id: user.id, username: user.username}
        else
            render json: {error:"user or password could not be found"}, status: 401
        end
    end


    private
    def username_params
      params.require(:user).permit(:username, :password)
    end

    # def password_params
    #   params.require(:user).permit(:password)
    # end
end
