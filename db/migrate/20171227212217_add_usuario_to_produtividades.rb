# frozen_string_literal: true

class AddUsuarioToProdutividades < ActiveRecord::Migration[5.0]
  def change
    add_reference :produtividades, :usuario, foreign_key: true
  end
end
