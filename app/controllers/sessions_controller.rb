class SessionsController < ApplicationController
  skip_before_filter :authorize
  def new
  end

  def create
    if user = User.find_by("name = ? AND password = ? ",params[:name], params[:password])
      session[:user_id] = user.id
      redirect_to admin_path
    else
      redirect_to login_path, :alert => "Invalid user/password"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, :notice => 'Logged out'
  end
end
