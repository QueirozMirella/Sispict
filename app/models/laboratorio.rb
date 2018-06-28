# frozen_string_literal: true

class Laboratorio < ApplicationRecord
  validates :nome, :acronimo, presence: true

  has_many :orientadores, -> { Usuario.with_role :orientador }, class_name: 'Usuario'
  belongs_to :predio, optional: true
end
