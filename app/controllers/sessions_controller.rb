class SessionsController < ApplicationController

  def create 
    user = User.find_by(username: params[:username])  #find user, based on what gets passed in by user
    session[:user_id] = user.id #using 'key' of :user_id, set value to user.id
    render json: user
  end

  def destroy
    session.delete :user_id
    head :no_content
  end
end
