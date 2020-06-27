class SessionsController < ApplicationController

  def new
    # we don't need any variables in here,
    # because we're not adding to the database
  end

  def destroy
    reset_session

    flash[:success] = "You are now logged out!"

    redirect_to root_path
  end

end
