class AuthController < ApplicationController
    skip_before_action :authorized, only: [:create, :auto_login]


    def create 
    @user = User.find_by(email: user_login_params[:email])
    if @user && @user.authenticate(user_login_params[:password])
        @token = encode_token({ user_id: @user.id })
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :accepted

        else 
            render json: {message: 'Invalid Email or Password'}, status: :unauthorized 
        end 
    end 

    def auto_login 
        response = JSON.parse(request.body.read)
        @token = response["token"]
        user = User.find(JWT.decode(@token, "1234", true, algorithm: 'HS256')[0]["user_id"])
        render json: user 
    end

    private
    def user_login_params 
        params.require(:user).permit(:email, :password, :token)
    end 


end
