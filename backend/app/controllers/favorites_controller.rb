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
        render json: favorite.workout, :include => :muscles
    end 

    def destroy 
        Favorite.find_by(user_id: params[:user_id], workout_id: params[:workout_id]).destroy
        render json: {"Deleted": "deleted"}
    end 

    private 
    def favorite_params
        params.require(:favorite).permit(:user_id, :workout_id) 
    end 



    

end
