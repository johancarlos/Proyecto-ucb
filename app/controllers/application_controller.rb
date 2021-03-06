class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :admin, :manageService, :manageEvent, :manageContact, :manageAlbum, :manageAboutsecrad, :managePoll, :manageContest, :manageRadio, :remember_me])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :admin, :manageService, :manageEvent, :manageContact, :manageAlbum, :manageAboutsecrad, :managePoll, :manageContest, :manageRadio ])
  end
end