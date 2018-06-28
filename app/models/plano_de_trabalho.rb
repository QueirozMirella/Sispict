# frozen_string_literal: true

class PlanoDeTrabalho < ApplicationRecord
  validates :asset, presence: true
  belongs_to :professor, class_name: 'Usuario', optional: true
end
