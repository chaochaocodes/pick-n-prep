class AuthController < ApplicationController
    skip_before_action :require_login

    def login #new 
        
    end

    def landing #show
        render :layout => false
    end

    def authenticate #create
        user = User.find_by(name: params[:auth][:name])
        if user && user.authenticate(params[:auth][:password])
            session[:user_id] = user.id.to_s
            redirect_to '/meals'
        else 
            flash[:message] = "User name or password is incorrect. Try again."
            render :login
        end
    end

    def logout #destroy
        session.clear
        redirect_to login_path
    end
end