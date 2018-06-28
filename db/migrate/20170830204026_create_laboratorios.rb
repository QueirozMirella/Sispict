# frozen_string_literal: true

class CreateLaboratorios < ActiveRecord::Migration[5.0]
  def change
    create_table :laboratorios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
