class ApplicationController < ActionController::API
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password) }
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :password) }
  end
end
