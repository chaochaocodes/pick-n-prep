class ApplicationController < ActionController::Base
    helper_method :logged_in?, :check_user, :current_user, :require_login
    before_action :require_login

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

    def require_login
        unless logged_in?
          flash[:error] = "You must be logged in to access this section"
          redirect_to login_path # halts request cycle
        end
    end
end


