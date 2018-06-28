# frozen_string_literal: true

module EditaisHelper
  def modalidade_i18n(modalidade)
    I18n.t("activerecord.attributes.edital.modalidades.#{modalidade}")
  end

  def e_bosista_e_nao_escrito(current_usuario, inscricoes)
    if bolsista?(current_usuario) && inscrito?(inscricoes, current_usuario)
      true
    else
      false
    end
  end

  def bolsista?(current_usuario)
    if current_usuario.has_role? :aluno
      true
    else
      false
    end
  end

  def inscrito?(inscricoes, current_usuario)
    if inscricoes.nil?
      false
    else
      inscrica_bolsista_exists?(inscricoes, current_usuario)
    end
  end

  def inscrica_bolsista_exists?(inscricoes, current_usuario)
    if inscricoes.where(bolsista: current_usuario).first.present?
      false
    else
      true
    end
  end
end
