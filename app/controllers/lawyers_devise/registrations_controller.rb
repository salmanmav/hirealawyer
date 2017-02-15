class LawyersDevise::RegistrationsController < Devise::RegistrationsController
  respond_to :html, :json
  before_action :configure_permitted_parameters
  # layout 'sessions'

  protected
  def after_sign_up_path_for(resource)
    lawyers_path
  end
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation)
    end
  end
end
