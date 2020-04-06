class GearsController < ApplicationController

    def index
        gears = Gear.all
        render json: gears
    end

    def show
        gear = Gear.find_by(id: params[:id])
        render json: gear
    end

    def create
        gear = Gear.create(name: params[:name], description: params[:description], category: params[:category], image_url: params[:image_url])
        render json: gear
    end

end
