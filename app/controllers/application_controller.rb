class ApplicationController < ActionController::Base

  # make current_user available to views
  helper_method :current_user

  # run this on every single page and action
  before_action :current_user

  def current_user
    if session[:user_id].present?
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end

    # return
    @current_user
  end

end
