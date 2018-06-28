# frozen_string_literal: true

class Bolsa < ApplicationRecord
  belongs_to :predio, optional: true
  belongs_to :edital, optional: true

  validates :quantidade, presence: true
end
