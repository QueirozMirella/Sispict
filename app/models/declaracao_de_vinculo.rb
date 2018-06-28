# frozen_string_literal: true

class DeclaracaoDeVinculo < ApplicationRecord
  validates :asset, presence: true
  belongs_to :inscricao, optional: true
  mount_uploader :asset, DeclaracaoDeVinculoUploader
end
