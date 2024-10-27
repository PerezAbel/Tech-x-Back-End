class UsersController < ApplicationController

    def create
        @user = User.new(user_params)  
        if @user.save                
            render json: @user, status: :created
        else
            render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def show
        @user = User.find_by(id: session[:user_id])  
        if @user
            render json: @user, status: :ok
        else
            render json: { error: 'User not found' }, status: :not_found 
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation) 
    end

end
