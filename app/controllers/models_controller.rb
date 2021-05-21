class ModelsController < ApplicationController
    def index
        models = Model.all 
        render json: models, except: [:created_at, :updated_at]
    end

    def show
        model = Model.find(params[:id])
        render json: model
    end
end
