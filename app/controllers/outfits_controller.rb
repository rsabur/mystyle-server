class OutfitsController < ApplicationController
    def index
        outfits = Outfit.all 
        render json: outfits, except: [:created_at, :updated_at]
    end

    def show
        outfit = Outfit.find(params[:id])
        render json: outfit
    end

    def create
        outfit = Outfit.create!(outfit_params)
        render json: outfit 
    end

    def update
        outfit = Outfit.find(params[:id])
        outfit.update!(outfit_params)
    end

    def destroy
        outfit = Outfit.find(params[:id])
        outfit.destroy
    end


    private 

    def outfit_params
        params.require(:outfit).permit(:name, :user_id)
    end
end
