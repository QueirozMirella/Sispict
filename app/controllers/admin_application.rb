# frozen_string_literal: true

class AdminApplication < ActionController::Base
  layout 'backoffice'
  before_action :authenticate_usuario!
  before_action :configure_permitted_parameters, if: :devise_controller?
  alias current_user current_usuario

  include Pundit

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = 'Acesso não permitido'
    redirect_to request.referrer || authenticated_root_path
  end
end
