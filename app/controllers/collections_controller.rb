class CollectionsController < ApplicationController

    def index
        collections = Collection.all
        render json: collections, include: :gear
    end

    def show
        collection = Collection.find_by(id: params[:id])
        render json: collection, include: :gear
    end

    def create
        collection = Collection.create(user_id: params[:user_id], gear_id: params[:gear_id])
        render json: collection, include: :gear
    end
    
end
