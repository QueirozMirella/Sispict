# frozen_string_literal: true

class CreateIdentidades < ActiveRecord::Migration[5.0]
  def change
    create_table :identidades do |t|
      t.string :asset

      t.timestamps
    end
  end
end
