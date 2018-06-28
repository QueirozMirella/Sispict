# frozen_string_literal: true

class Inscricao < ApplicationRecord
  belongs_to :edital, optional: true
  belongs_to :projeto, optional: true
  belongs_to :bolsista, class_name: 'Usuario', optional: true
  belongs_to :orientador, class_name: 'Usuario', optional: true

  has_one :declaracao_de_vinculo
  has_one :extrato
  has_one :ficha_cadastral

  validates :bolsista_id, uniqueness: { scope: :edital_id, message: 'Desculpe, mas você só pode se inscrever uma vez no mesmo edital. Qualquer dúvida entre em contato conosco.' }

  accepts_nested_attributes_for :projeto, reject_if: :all_blank
  accepts_nested_attributes_for :declaracao_de_vinculo, reject_if: :all_blank
  accepts_nested_attributes_for :extrato, reject_if: :all_blank
  accepts_nested_attributes_for :ficha_cadastral, reject_if: :all_blank

  scope :existe_bolsista?, ->(current_usuario) { where(bolsista: current_usuario.id).first.present? }
  scope :minha_inscricao, ->(current_usuario) { where(bolsista: current_usuario) }

  def self.existe_edital?(current_user)
    @edital = find_edital(current_user)
    @edital if @edital.nil? == false
    false
  end

  def find_edital(current_user)
    where(bolsista_id: current_user.id).to_a.first.edital_id
  end
end
