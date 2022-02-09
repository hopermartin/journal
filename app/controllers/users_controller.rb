class UsersController < ApplicationController
  def new
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)

    @user.save
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
