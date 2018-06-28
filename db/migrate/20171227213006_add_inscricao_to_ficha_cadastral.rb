# frozen_string_literal: true

class AddInscricaoToFichaCadastral < ActiveRecord::Migration[5.0]
  def change
    add_reference :fichas_cadastral, :inscricao, foreign_key: true
  end
end
