class SessionsController < ApplicationController

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.username)
    else
      flash.now[:notice] = "Error"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
    flash[:notice] = "Logged Out"
  end

end
