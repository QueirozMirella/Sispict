# frozen_string_literal: true

class Extrato < ApplicationRecord
  validates :asset, presence: true
  belongs_to :inscricao, optional: true
  mount_uploader :asset, ExtratoUploader
end
