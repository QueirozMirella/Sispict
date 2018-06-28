# frozen_string_literal: true

class AddBolsistaToInscricao < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :inscricoes, :usuarios, column: :bolsista_id
  end
end
