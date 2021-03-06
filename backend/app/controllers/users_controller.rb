class UsersController < ApplicationController
    # This line is where you will include any method you want to allow to invoke without checking if it's authorized first.
    skip_before_action :authorized, only: [:index, :create]

    def index 
        users = User.all 
        render json: users
    end 

    def create 
        
        user = User.create(user_params)

        if user.valid?
            render json: {user: user, status: :created}
        else
            render json: { error: 'failed to create user', status: :not_acceptable }
        end
    end

    def update 
        user = User.find(params[:id]).update(user_params)
        render json: user
    end 

    # def destroy 
    #     User.find(params[:id]).destroy 
    #     render json: {}
    # end 

    private

    def user_params 
        params.require(:user).permit(:first_name, :last_name, :image, :email, :password)
    end 
end
