class Admin::UsersController < ApplicationController

    def index
      @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find_by(params[:id])
      if @user.update_attributes(user_params)
        redirect_to admin_users_path
      else
        render :edit
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to admin_users_path
    end

    protected

    def user_params
      params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation, :university)
    end

end
