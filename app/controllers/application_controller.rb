class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password])
  end

  def after_sign_in_path_for(_resource)
    if current_user.kids.empty?
      new_kid_path
    else
      tracking_kid_path(current_user.kids.first)
    end
  end
end
