# frozen_string_literal: true

module ApplicationHelper
  def loading_style(controller, action)
    if (controller.eql?('devise/registrations') && action.eql?('new')) || controller.eql?('devise/sessions') || controller.eql?('uenf') || controller.eql?('devise/passwords')
      stylesheet_link_tag 'uenf'
    else
      stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload'
    end
  end

  def inscricao_existe(inscricao)
    if inscricao.existe_bolsista?(current_usuario)
      @inscricao_criada = Inscricao.minha_inscricao(current_usuario).first
      true
    else
      false
    end
  end
end
