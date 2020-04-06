class WishlistsController < ApplicationController
    def index
        wishlists = Wishlist.all
        render json: wishlists, include: :gear
    end

    def show
        wishlist = Wishlist.find_by(id: params[:id])
        render json: wishlist, include: :gear
    end

    def create
        wishlist = Wishlist.create(user_id: params[:user_id], gear_id: params[:gear_id])
        render json: wishlist, include: :gear
    end
end
