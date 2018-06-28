# frozen_string_literal: true

class Predio < ApplicationRecord
  validates :nome, :acronimo, presence: true

  has_many :laboratorios
end
