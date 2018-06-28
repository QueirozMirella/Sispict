# frozen_string_literal: true

class AddProjetoToInscricao < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :inscricoes, :projetos
  end
end
