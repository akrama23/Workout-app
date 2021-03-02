class FavoritesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show, :create]

    def index 
        favorites = Favorite.all 
        render json: favorites
    end 

    def show 
        favorite = Favorite.find(params[:id])
        render json: favorite
    end 

    def create 
        favorite = Favorite.create(favorite_params)
        render json: favorite 
    end 

    def destroy 
        Favorite.find(params[:id]).destroy 
        render json: {"Deleted": "deleted"}
    end 

    private 
    def favorite_params
        params.require(:favorite).permit(:user_id, :workout_id) 
    end 



    

end
