# frozen_string_literal: true

class FichaCadastral < ApplicationRecord
  validates :asset, presence: true
  belongs_to :inscricao, optional: true
  mount_uploader :asset, FichaCadastralUploader
end
