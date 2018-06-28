# frozen_string_literal: true

class Edital < ApplicationRecord
  mount_uploader :asset, EditalUploader

  validates :inicio, :termino, :cr, :asset, presence: true

  before_save :add_code
  before_validation :date_validate

  scope :open, -> { where('termino >= ?', Date.today) }

  has_many :inscricoes
  has_many :bolsas
  has_many :roles

  accepts_nested_attributes_for :bolsas, reject_if: :all_blank

  enum modalidades: [:voluntario, :centifica, :tecnologica, :especial]

  def self.modalidade_attributes_for_select
    modalidades.map do |key, modalidade|
      [I18n.t("activerecord.attributes.#{model_name.i18n_key}.modalidades.#{key}"), modalidade]
    end
  end

  private

  def add_code
    self.codigo ||= Time.now.strftime('%d%m%Y').to_s
  end

  def date_validate
    message = 'Por favor, verifique se a data final é maior do que a data de início'
    errors.add(:base, message) unless days_difference
  end

  def days_difference
    if inicio.nil? && termino.nil?
      false
    else
      termino > inicio
    end
  end
end
