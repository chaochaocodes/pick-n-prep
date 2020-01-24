class AuthController < ApplicationController
    def login #new 
    end

    def landing #jumbotron root
        render :layout => false
    end

    def authenticate #create
        user = User.find_by(name: params[:auth][:name])
        if user && user.authenticate(params[:auth][:password])
            session[:user_id] = user.id.to_s
            redirect_to '/'
        else 
            flash[:message] = "User name or password is incorrect. Try again."
            render :login
        end
    end

    def logout #destroy
        session.clear
        redirect_to signup_path
    end
end