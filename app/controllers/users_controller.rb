class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    # @user.avatar.attach(params[:avatar]
    # def upload
    #     uploaded_file = params[:user][:picture]
    #     File.open(Rails.root.join('public', 'uploads', uploaded_file.original_filename), 'wb') do |file|
    #       file.write(uploaded_file.read)
    #     end
    # end

    def new
        @user = User.new
    end

    def show
        # render :layout => "format"
    end

    def create
        @user = User.new(user_params)
        if params[:user][:password] == params[:user][:password_confirmation]
            @user.password = params[:user][:password]
        end
        if @user.save
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
    
    def destroy
        if @user == @current_user
            @user.destroy_all
        end 
        redirect_to logout_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end

    def profile_params
        params.require(:user).permit(:name, :password, :trip, :dietary_restriction, :avatar)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
