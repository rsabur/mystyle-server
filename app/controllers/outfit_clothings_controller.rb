class OutfitClothingsController < ApplicationController
    def index
        outfit_clothings = OutfitClothing.all 
        render json: outfit_clothings, except: [:created_at, :updated_at]
    end

    def show
        outfit_clothing = OutfitClothing.find(params[:id])
        render json: outfit_clothing
    end

    def create
        params[:outfit_clothing].each do |clothing_hash| 
            OutfitClothing.create(clothing_id: clothing_hash[:clothing_id], outfit_id: params[:outfit_id])
         end 
         
        render json: outfit_clothing 
    end

    def update
        outfit_clothing = OutfitClothing.find(params[:id])
        outfit_clothing.update!(outfit_clothing_params)
    end

    def destroy
        outfit_clothing = OutfitClothing.find(params[:id])
        outfit_clothing.destroy
    end

    private 

    def outfit_clothing_params
        params.require(:outfit_clothing).permit(:outfit_id, :clothing_id)
    end
end
