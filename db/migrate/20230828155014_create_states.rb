# frozen_string_literal: true

# app/models/state.rb
# Creates the States table at the database
class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
