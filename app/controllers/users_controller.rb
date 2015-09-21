class UsersController < ApplicationController
  def new

  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/', notice: "You have signed up successfully."
    else
      flash[:notice] = "An error has occurred; please try again."
      render 'new'
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :auth_token, :email, :password, :password_confirmation)
  end
end