# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :country
      t.string :city
      t.string :attraction
      t.string :cuisine
      t.string :description

      t.timestamps
    end
  end
end
