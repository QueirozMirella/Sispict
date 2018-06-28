# frozen_string_literal: true

class AddNomeDoArquivoToEditais < ActiveRecord::Migration[5.0]
  def change
    add_column :editais, :nome_do_arquivo, :string
  end
end
