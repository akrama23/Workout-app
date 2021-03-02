class TargetMusclesController < ApplicationController

    def index 
        target_muscles = TargetMuscle.all 
        render json: target_muscles 
    end 

    def show 
        target_muscle = TargetMuscle.find(params[:id])
        render json: target_muscle 
    end 

    def create 
        target_muscle = TargetMuscle.create(target_muscle_params)
        render json: target_muscle
    end 

    def update 
        target_muscle = TargetMuscle.find(params[:id]).update(target_muscle_params)
        render json: target_muscle
    end 

    def destroy 
        TargetMuscle.find(params[:id]).destroy 
        render json: {"Deleted": "deleted"}
    end 

    private
    def target_muscle_params 
        params.require(:target_muscle).permit(:workout_id, :muscle_id)
    end 
end
