class ApplicationController < ActionController::Base
  include Authentication

  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find(Current.session[:user_id]) if Current.session.try(:[], :user_id)
  end

  def logged_in?
    !!current_user
  end
end
