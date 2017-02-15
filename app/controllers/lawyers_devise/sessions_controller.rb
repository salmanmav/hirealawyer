class LawyersDevise::SessionsController < Devise::SessionsController
  respond_to :html, :json
  # layout 'sessions'

  protected
  def after_sign_out_path_for(resource_or_scope)
    lawyer_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    lawyers_path
  end
end