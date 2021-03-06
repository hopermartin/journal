class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:username])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to entries_path
    else
      message = "Something went wrong!"
      redirect_to login_path, notice: message
    end
  end
  def destroy
    @user = nil
    session[:user_id] = nil
    redirect_to login_path
  end
end