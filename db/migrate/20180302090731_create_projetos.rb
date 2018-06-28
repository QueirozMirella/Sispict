# frozen_string_literal: true

class CreateProjetos < ActiveRecord::Migration[5.0]
  def change
    create_table :projetos do |t|
      t.text :titulo
      t.string :keywords
      t.string :area
      t.text :objetivo

      t.timestamps
    end
  end
end
