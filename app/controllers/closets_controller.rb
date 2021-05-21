class ClosetsController < ApplicationController
    def index
        closets = Closet.all 
        render json: closets, except: [:created_at, :updated_at]
    end

    def show
       closet = Closet.find(params[:id])
       render json: closet
    end
end
