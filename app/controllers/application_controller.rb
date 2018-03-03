class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  #private

  def user_not_authorized
    flash[:error] = 'You need to be a subscriber to access this content'
    redirect_to new_subscription_path
  end

  def authenticate_user!
    unless current_user
      flash[:error] = 'You need to be logged in to access this content'
      redirect_to new_user_registration_path
    end
  end
end
