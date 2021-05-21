class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create!(user_params)
        render json: user 
    end

    def update
        user = User.find(params[:id])
        user.update!(user_params)
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end


    private 

    def user_params
        params.require(:user).permit(:name, :gender, :username, :age, :model_id, :password)
    end
end
