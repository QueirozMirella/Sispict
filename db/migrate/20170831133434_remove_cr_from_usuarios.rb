# frozen_string_literal: true

class RemoveCrFromUsuarios < ActiveRecord::Migration[5.0]
  def change
    remove_column :usuarios, :cr, :decimal
  end
end
