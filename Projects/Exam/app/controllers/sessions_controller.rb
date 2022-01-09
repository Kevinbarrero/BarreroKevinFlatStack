class SessionsController < ApplicationController
    def new
    end

    def create
       user =  User.find_by(email: params[:session][:email])
       if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:notice] = "logged in successfully"
            redirect_to controller: :projects, action: :index
       else
            flash.now[:alert] = "There was something wrong with your login"
            render 'new'
       end
    end

    def destroy 
        session[:user_id] = nil
        flash[:notice] = "Logged out"
        redirect_to login_path
    end
end