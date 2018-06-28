# frozen_string_literal: true

class CreateFichasCadastral < ActiveRecord::Migration[5.0]
  def change
    create_table :fichas_cadastral do |t|
      t.string :asset

      t.timestamps
    end
  end
end
