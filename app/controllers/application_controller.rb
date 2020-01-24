class ApplicationController < ActionController::Base
    helper_method :logged_in?, :check_user, :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] 
    end
    
    def check_user
        if !logged_in?
            redirect_to signup_path
        end
    end

    def logged_in?
        !!current_user
    end
end


