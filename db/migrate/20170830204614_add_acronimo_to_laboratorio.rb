# frozen_string_literal: true

class AddAcronimoToLaboratorio < ActiveRecord::Migration[5.0]
  def change
    add_column :laboratorios, :acronimo, :string
  end
end
