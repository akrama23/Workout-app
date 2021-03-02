class WorkoutsController < ApplicationController
    
    skip_before_action :authorized, only: [:create, :index]

    def index 
        workouts = Workout.all 
        render json: workouts.to_json(workout_serializer)
    end 

    def show 
        workout = Workout.find(params[:id])
        render json: workout 
    end 

    def create 
        workout = Workout.create(workout_params)
        render json: workout, :include => [:muscles]
    end 

    def update 
        workout = Workout.find(params[:id]).update(workout_params)
        render json: workout
    end 

    def destroy 
        Workoout.find(params[:id]).destroy 
        render json: {"Deleted": "deleted"}
    end 


    private 

    def workout_serializer
        {
            :include => {
                :muscles => {
                    :except => [:created_at, :updated_at]
                }
            },
            :except => [:created_at, :updated_at]
        }

    end 

    def workout_params 
        params.require(:workout).permit(:name, :description, :image, :video,)
    end 
end
