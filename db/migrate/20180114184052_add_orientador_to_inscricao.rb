# frozen_string_literal: true

class AddOrientadorToInscricao < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :inscricoes, :usuarios, column: :orientador_id
  end
end
