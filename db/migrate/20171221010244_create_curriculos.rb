# frozen_string_literal: true

class CreateCurriculos < ActiveRecord::Migration[5.0]
  def change
    create_table :curriculos do |t|
      t.string :asset

      t.timestamps
    end
  end
end
