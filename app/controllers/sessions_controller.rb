class SessionsController < ApplicationController
  def new
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
    session[:name] = params[:name]
    controller: 'application', action: 'hello'
  end

  def destroy
    session.destroy :name
    redirect_to controller: 'sessions', action: 'new'
  end
end
