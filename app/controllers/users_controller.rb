class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to universities_path, notice: "Yo #{@user.firstname}, time to get you some A's!"
    else
      render :new
    end
  end

  def edit
    current_user
  end

  def update
    if current_user.update_attributes(user_params)
      current_user.save
      redirect_to user_path("#{current_user.id}")

    else
      render :edit
    end
  end

  def show
    @user = current_user
  end

  protected

  def user_params
    params.require(:user).permit(:email, :firstname, :lastname, :password, :password_confirmation, :university, :bio)
  end


end
