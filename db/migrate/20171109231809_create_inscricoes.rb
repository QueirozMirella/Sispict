# frozen_string_literal: true

class CreateInscricoes < ActiveRecord::Migration[5.0]
  def change
    create_table :inscricoes do |t|
      t.references :edital
      t.references :projeto
      t.references :bolsista
      t.references :orientador
      t.timestamps
    end
  end
end
