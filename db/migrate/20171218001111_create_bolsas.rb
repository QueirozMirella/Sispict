# frozen_string_literal: true

class CreateBolsas < ActiveRecord::Migration[5.0]
  def change
    create_table :bolsas do |t|
      t.references :predio, foreign_key: true
      t.references :edital, foreign_key: true
      t.integer :quantidade

      t.timestamps
    end
  end
end
