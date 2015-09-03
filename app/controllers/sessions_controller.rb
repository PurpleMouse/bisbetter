class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:email])

  	if user && user.authenticate(params[:password])
  		session[:id] = user.id
  		redirect_to '/' 
  	else
  		redirect_to '/login'
  	end
  end

  def destroy
  	session[:user_id] = nil
    session.clear
    redirect_to '/login'
  end
end
