class ClothingsController < ApplicationController
    def index
        clothings = Clothing.all 
        render json: clothings, except: [:created_at, :updated_at]
    end

    def show
        clothing = Clothing.find(params[:id])
        render json: clothing
    end

    def create
        clothing = Clothing.create!(clothing_params)
        render json: clothing 
    end

    def destroy
        clothing = Clothing.find(params[:id])
        clothing.destroy
    end

    private

    def clothing_params
        params.require(:clothing).permit(:name, :image, :size, :category, :gender)
    end
end
