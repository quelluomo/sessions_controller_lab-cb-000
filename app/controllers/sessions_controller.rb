class SessionsController < ApplicationController
  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to controller: 'sessions', action: 'new'
      #redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
      #redirect_to root_path
    end
  end

  def destroy
    session.delete :name
    redirect_to root_path
  end
end
