# frozen_string_literal: true

class AddInscricaoToDeclaracaoDeVinculo < ActiveRecord::Migration[5.0]
  def change
    add_reference :declaracoes_de_vinculo, :inscricao, foreign_key: true
  end
end
