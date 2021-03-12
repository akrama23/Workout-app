class WorkoutsController < ApplicationController
    
    skip_before_action :authorized, only: [:create, :index, :show]

    def index 
        
        render json: Workout.all.to_json(
            :include => {
                  :target_muscles => {
                     :include => {
                        :muscle => {:only => [:name]}
                     }
                   }
               }, :except => [:updated_at, :created_at]
            )
    end 

    def show 
        workout = Workout.find(params[:id])
        render json: workout.to_json(
              :include => {
                 :target_muscles => {
                    :include => {
                       :muscle => {:only => [:name]}
                    } 
                  }
              }
           )
    end 

    def create 
        workout = Workout.new(workout_params)
        if workout.save
           render json: workout.to_json(
              :include => {
                    :target_muscles => {
                       :include => {
                          :muscle => {:only => [:name]}
                       }
                     }
                 }, :except => [:updated_at, :created_at]
              )
        else
           render json: {error: 'ERROR on Create action'}
        end
        # workout = Workout.create(workout_params)
        # render json: workout, :include => [:muscles]
    end 

    # def update 
    #     workout = Workout.find(params[:id])
    #     workout.update(workout_params)
    #     render json: workout.to_json(
    #        :include => {
    #              :target_muscles => {
    #                 :include => {
    #                    :muscle => {:only => [:name]}
    #                 }
    #               }
    #           }, :except => [:updated_at, :created_at]
    #        )
    # end 

    # def destroy 
    #     workout = Workout.find(params[:id]).destroy
    #     render json: Workout.all.to_json(workout_serializer)
    # end 


    private 

    # def workout_serializer
    #     {
    #         :include => {
    #            :target_muscles => {
    #               :include => {
    #                  :muscle => {:only => [:name]}
    #               } 
    #             }, :except => [:workout_id, :muscle_id, :id]
    #         }
    #      }

    # end 

    def workout_params 
        params.require(:workout).permit(:name, :description, :image, :video)
    end 
end
