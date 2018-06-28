# frozen_string_literal: true

class CreatePlanosDeTrabalho < ActiveRecord::Migration[5.0]
  def change
    create_table :planos_de_trabalho do |t|
      t.string :asset

      t.timestamps
    end
  end
end
