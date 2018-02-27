class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

  def authenticate_user!
    redirect_to new_user_registration_path, notice: 'You need to be logged in to access this content' unless current_user
  end
end
