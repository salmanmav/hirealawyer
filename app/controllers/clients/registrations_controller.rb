class Clients::RegistrationsController < Devise::RegistrationsController
  respond_to :html, :json
  before_action :configure_permitted_parameters
  # layout 'sessions'

  protected
  # def after_sign_up_path_for(resource)
  #   if Rails.env.production?
  #     $mixpanel_tracker.track(session.id, 'Successful Signup')
  #   end
  #   '/'
  # end
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:name,:email, :password, :password_confirmation,:city)
    end
  end
end
