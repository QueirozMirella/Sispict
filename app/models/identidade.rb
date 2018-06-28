# frozen_string_literal: true

class Identidade < ApplicationRecord
  validates :asset, presence: true
  belongs_to :usuario
end
