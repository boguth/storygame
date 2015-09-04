class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: session_params[:username])
    session[:user_id] = user.id
    redirect_to users_path
  end
  #boop
  def delete
  end

  private
  def session_params
    params.require(:session).permit(:username, :password)
  end
end
