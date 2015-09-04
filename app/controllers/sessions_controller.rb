class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(username: session_params[:username])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = user.id
      redirect_to users_path
    else
      @error = "Login failed. Please enter your username and password."
      @attempted_username = session_params[:username]
      render :new
    end
  end

  def delete
  end

  private
  def session_params
    params.require(:session).permit(:username, :password)
  end
end
