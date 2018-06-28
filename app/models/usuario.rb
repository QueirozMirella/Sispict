# frozen_string_literal: true

class Usuario < ApplicationRecord
  belongs_to :laboratorio, optional: true
  has_one :cpf
  has_one :curriculo
  has_one :identidade
  has_one :produtividade, -> { Usuario.with_role :professor }
  has_one :plano_de_trabalho, -> { Usuario.with_role :professor }

  accepts_nested_attributes_for :identidade
  accepts_nested_attributes_for :cpf
  accepts_nested_attributes_for :produtividade
  accepts_nested_attributes_for :plano_de_trabalho
  accepts_nested_attributes_for :curriculo

  after_save :assign_default_role

  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :nome, :sobrenome, :celular, :data_de_nascimento, :cr, :lattes, presence: true

  def checked_roles
    roles.collect(&:name)
  end

  def roles_name
    checked_roles.join(',')
  end

  def assign_default_role
    add_role(:aluno) if roles.blank?
  end
end
