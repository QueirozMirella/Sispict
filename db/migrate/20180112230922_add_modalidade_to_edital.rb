# frozen_string_literal: true

class AddModalidadeToEdital < ActiveRecord::Migration[5.0]
  def change
    add_column :editais, :modalidades, :integer, default: 0, null: false
  end
end