# frozen_string_literal: true

class AddCrToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :cr, :float
  end
end
