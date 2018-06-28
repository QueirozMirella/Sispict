# frozen_string_literal: true

class AddUsuarioToCurriculos < ActiveRecord::Migration[5.0]
  def change
    add_reference :curriculos, :usuario, foreign_key: true
  end
end
