# frozen_string_literal: true

class CreatePredios < ActiveRecord::Migration[5.0]
  def change
    create_table :predios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
