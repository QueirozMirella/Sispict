# frozen_string_literal: true

class Curriculo < ApplicationRecord
  validates :asset, presence: true
  belongs_to :usuario
end
