# frozen_string_literal: true

class CreateEditais < ActiveRecord::Migration[5.0]
  def change
    create_table :editais do |t|
      t.text :codigo
      t.date :inicio
      t.date :termino
      t.decimal :cr, default: 7.0
      t.text :descricao

      t.timestamps
    end
  end
end
