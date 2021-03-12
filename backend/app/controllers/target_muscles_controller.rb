class TargetMusclesController < ApplicationController
    skip_before_action :authorized, only: [:create, :index]

    def index  
        render json: TargetMuscle.all.to_json({ 
            :except => [:updated_at, :created_at]
        }) 
    end 

    def create 
        workout = TargetMuscle.create(target_muscle_params)
        render json: workout.to_json(
           :include => {
              :muscle => {:only => [:name]}
           }
        )
    end 

    # def destroy 
    #     TargetMuscle.find(params[:id]).destroy 
    #     render json: {"Deleted": "deleted"}
    # end 

    private
    def target_muscle_params 
        params.require(:target_muscle).permit(:workout_id, :muscle_id)
    end 

end
