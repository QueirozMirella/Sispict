# frozen_string_literal: true

class CreateExtratos < ActiveRecord::Migration[5.0]
  def change
    create_table :extratos do |t|
      t.string :asset

      t.timestamps
    end
  end
end
