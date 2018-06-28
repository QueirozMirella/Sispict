# frozen_string_literal: true

class CreateCpfs < ActiveRecord::Migration[5.0]
  def change
    create_table :cpfs do |t|
      t.integer :numero
      t.string :asset
      t.timestamps
    end
  end
end
