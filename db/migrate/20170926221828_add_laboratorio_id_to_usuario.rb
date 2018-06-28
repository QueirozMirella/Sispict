# frozen_string_literal: true

class AddLaboratorioIdToUsuario < ActiveRecord::Migration[5.0]
  def change
    add_reference :usuarios, :laboratorio, index: true, foreign_key: true
  end
end
