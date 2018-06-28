# frozen_string_literal: true

class ChangeNomeDoArquivoAsset < ActiveRecord::Migration[5.0]
  def change
    rename_column :editais, :nome_do_arquivo, :asset
  end
end
