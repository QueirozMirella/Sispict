# frozen_string_literal: true

class AddProfessorToPlanoDeTrabalho < ActiveRecord::Migration[5.0]
  def change
    add_reference :planos_de_trabalho, :professor, index: true
    add_foreign_key :planos_de_trabalho, :usuarios, column: :professor_id
  end
end
