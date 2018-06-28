# frozen_string_literal: true

class AddInscricaoToExtrato < ActiveRecord::Migration[5.0]
  def change
    add_reference :extratos, :inscricao, foreign_key: true
  end
end
