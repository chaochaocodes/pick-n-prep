class UsersController < ApplicationController
    # before_action :check_user
    before_action :find_user, only: [:show, :edit, :update]

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if params[:user][:password] == params[:user][:password_confirmation]
            @user.password = params[:user][:password]
            @user.save
            flash[:message] = nil
            redirect_to login_path
        else
            flash[:message] = "Passwords do not Match!" # @user.full_messages
            render :new
        end
    end

    def update
        if @user.update(profile_params)
            redirect_to @user
        else 
            render :edit
        end
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

    def profile_params
        params.require(:user).permit(:name, :password, :trip, :dietary_restriction)
    end

    def find_user
        @user = User.find(params[:id])
    end
end