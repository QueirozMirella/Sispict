# frozen_string_literal: true

class CreateDeclaracoesDeVinculo < ActiveRecord::Migration[5.0]
  def change
    create_table :declaracoes_de_vinculo do |t|
      t.string :asset

      t.timestamps
    end
  end
end
