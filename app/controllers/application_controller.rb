class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :artist_name, :bio, :spotify_artist_link])
    devise_parameter_sanitizer.permit(:account_update, keys: [:artist_name, :bio, :spotify_artist_link, :facebook_link, :instagram_link])

  end
end
