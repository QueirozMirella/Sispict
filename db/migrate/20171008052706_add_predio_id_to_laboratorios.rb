# frozen_string_literal: true

class AddPredioIdToLaboratorios < ActiveRecord::Migration[5.0]
  def change
    add_reference :laboratorios, :predio, foreign_key: true
  end
end
