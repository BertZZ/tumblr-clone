class SessionsController < ApplicationController

  def new
    @current_user = current_user
  end

  def create
    user = User.find_by(username: params[:username])
    puts user.inspect
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      puts "ERROR"
      render 'new'
      flash.now[:alert] = "Error"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end

end
