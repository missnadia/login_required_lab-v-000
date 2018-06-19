class SessionsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
    session.destroy :name
    redirect_to controller: 'sessions', action: 'new'
  end
end
