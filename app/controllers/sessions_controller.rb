class SessionsController < ApplicationController
    def new

    end

    def create
        user = User.find_by(name: params[:session][:name].downcase)
        if user  && user.authenticate(params[:session][:password])
        session[:user_id] = user.id
        flash[:success] = "You have logged in"
        redirect_to user
        else
        flash.now[:danger] = "Incorrect Username or password"
        render 'new'
        end
    end

    def destroy
        flash[:success] = "Sucessfully Loggedout"
        session[:user_id] = nil
        redirect_to root_path
    end
end