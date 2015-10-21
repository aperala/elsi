class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      if params[:remember_me]
        cookies.permanent[:auth_token] = user.auth_token
      else
        cookies[:auth_token] = user.auth_token
      end

      redirect_to '/passages'
    else
      flash[:notice] = "There was a problem. Please try again."
      redirect_to '/login'
    end
  end

  def destroy
    cookies.delete(:auth_token)
    redirect_to '/'
  end

end