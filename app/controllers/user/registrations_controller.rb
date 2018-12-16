class User::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer(:sign_up, keys: [:first_name, :last_name])
    devise_parameter_sanitizer(:account_update, keys: [:first_name, :last_name])
  end
end
