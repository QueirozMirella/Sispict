# frozen_string_literal: true

class AddAcronimoToPredios < ActiveRecord::Migration[5.0]
  def change
    add_column :predios, :acronimo, :string
  end
end
