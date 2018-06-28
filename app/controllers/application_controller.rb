# frozen_string_literal: true

class ApplicationController < ActionController::Base
  layout :layout_by_resource

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) do |usuarios_parametros|
      usuarios_parametros.permit(:nome, :sobrenome, :email, :password, :password_confirmation,
                                 :telefone, :celular, :genero, :matricula, :data_de_nascimento, :cr, :lattes,
                                 cpf_attributes: [:id, :numero, :asset, :_destroy])
    end

    devise_parameter_sanitizer.permit(:account_update) do |usuarios_parametros|
      usuarios_parametros.permit(:nome, :sobrenome, :email, :cpf, :telefone, :celular, :genero, :matricula, :data_de_nascimento, :cr,
                                 :lattes, :role_ids, :password, :password_confirmation, :current_password,
                                 identidade_attributes: [:id, :asset, :_destroy],
                                 cpf_attributes: [:id, :numero, :asset, :_destroy],
                                 produtividade_attributes: [:id, :asset, :_destroy],
                                 plano_de_trabalho_attributes: [:id, :asset, :_destroy],
                                 curriculo_attributes: [:id, :asset, :_destroy])
    end
  end

  def layout_by_resource
    if devise_controller? && resource_name == :usuario
      "backoffice"
    else
      "application"
    end
  end
end
