# frozen_string_literal: true

class AddUsuarioToIdentidades < ActiveRecord::Migration[5.0]
  def change
    add_reference :identidades, :usuario, foreign_key: true
  end
end
