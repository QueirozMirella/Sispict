# frozen_string_literal: true

class AddInformacoesToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :nome, :string
    add_column :usuarios, :sobrenome, :string
    add_column :usuarios, :cpf, :string
    add_column :usuarios, :telefone, :string
    add_column :usuarios, :celular, :string
    add_column :usuarios, :genero, :integer
    add_column :usuarios, :matricula, :integer
    add_column :usuarios, :data_de_nascimento, :date
    add_column :usuarios, :cr, :decimal
    add_column :usuarios, :lattes, :string
  end
end
