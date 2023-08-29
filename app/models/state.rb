# frozen_string_literal: true

# == Schema Information
#
# Table name: states
#
#  id       :integer      not null, primary key
#  name     :string       not null
#  symbol   :string       not null
class State < ApplicationRecord
  validates :name, presence: true
  validates :symbol, presence: true

  has_many :city, dependent: :destroy
end
