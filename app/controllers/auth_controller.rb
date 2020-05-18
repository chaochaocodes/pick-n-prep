class AuthController < ApplicationController

    def login #new 
        # if session[:user_id] != nil
        #     user = User.find(session[:user_id])
        #     redirect_to signup_path
        # end
    end

    def landing #show
        render :layout => false
    end

    def authenticate #create
        user = User.find_by(name: params[:auth][:name])
        if user && user.authenticate(params[:auth][:password])
            session[:user_id] = user.id
            redirect_to '/meals'
        else 
            flash[:message] = "User name or password is incorrect."
            render :login
            flash.clear
        end
    end

    def logout #destroy
        session.clear
        redirect_to login_path
    end
end