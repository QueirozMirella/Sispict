# frozen_string_literal: true

class RemoveCPFToUsuario < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :cpf, :string
  end
end
