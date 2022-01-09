class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          flash[:success] = "Welcome to my app #{@user.username}"
          redirect_to controller: :projects, action: :index
        else
          render 'new'
        end
      end
    def user_params
    params.require(:user).permit(:username, :email, :password)
    end
end