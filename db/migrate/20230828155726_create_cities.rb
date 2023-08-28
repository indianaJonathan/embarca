# frozen_string_literal: true

# app/models/city.rb
# Creates the Cities table at the database
class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.belongs_to :state
      t.boolean :capital

      t.timestamps
    end
  end
end
