class ApplicationController < ActionController::Base
    helper_method :logged_in?, :check_user, :current_user

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id] 
        puts "current user = #{@current_user}"
    end
      
    def check_user
        if !logged_in?
        redirect_to login_path
        end
    end

    def logged_in?
        !!current_user
        # !!cookies[:user_id]
    end
end


