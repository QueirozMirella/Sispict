# frozen_string_literal: true

class AddCPFToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_reference :cpfs, :usuario, foreign_key: true
  end
end
