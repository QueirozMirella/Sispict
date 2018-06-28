# frozen_string_literal: true

class CreateProdutividades < ActiveRecord::Migration[5.0]
  def change
    create_table :produtividades do |t|
      t.string :asset

      t.timestamps
    end
  end
end
