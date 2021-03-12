class MusclesController < ApplicationController
    skip_before_action :authorized, only: [:index]

    def index
        render json: Muscle.all.to_json({
            :except => [:updated_at, :created_at]
        }) 
    end 

    # def show 
    #     muscle = Muscle.find(params[:id])
    #     render json: muscle 
    # end 

    # def create 
    #     muscle = Muscle.create(muscle_params)
    #     render json: muscle 
    # end 

    # def update 
    #     muscle = Muscle.find(params[:id]).update(muscle_params)
    #     render json: muscle 
    # end 

    # def destroy 
    #     Muscle.find(params[:id]).destroy 
    #     render json: {"Deleted": "deleted"}
    # end 

    # private
    # def muscle_params 
    #     params.require(:muscle).permit(:name)
    # end 

end
