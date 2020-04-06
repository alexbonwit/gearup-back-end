class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, include: [:collections, :wishlists, :gears]
    end

    def show
        user = User.find_by(id: params[:id])
        render json: user, include: [:collections, :wishlists, :gears]
    end

    def create
        user = User.create(name: params[:name], bio: params[:bio], influences: params[:influences], password: params[:password], logged_in: true)
        render json: user, only: [:id, :name, :bio, :influences, :logged_in]
    end

    def update
        user = User.find_by(name: params[:name])
        user.update(bio: params[:bio], influences: params[:influences], password: params[:password], logged_in: params[:logged_in])
        render json: user, only: [:id, :name, :bio, :influences, :logged_in]
    end
end
