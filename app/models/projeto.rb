# frozen_string_literal: true

class Projeto < ApplicationRecord
  validates :titulo, :palavras_chave, :area, :objetivo, presence: true
end
