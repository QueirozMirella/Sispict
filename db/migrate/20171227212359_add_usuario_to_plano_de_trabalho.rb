# frozen_string_literal: true

class AddUsuarioToPlanoDeTrabalho < ActiveRecord::Migration[5.0]
  def change
    add_reference :planos_de_trabalho, :usuario, foreign_key: true
  end
end
