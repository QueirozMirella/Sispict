# frozen_string_literal: true

class Produtividade < ApplicationRecord
  validates :asset, presence: true
  belongs_to :professor, class_name: 'Usuario', foreign_key: true, optional: true
end
