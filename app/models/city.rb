# frozen_string_literal: true

# == Schema Information
#
# Table name: cities
#
#  id       :integer      not null, primary key
#  name     :string       not null
#  state    :state        not null
#  capital  :boolean      default(FALSE)
class City < ApplicationRecord
  scope :state_capital, -> { where(capital: true) }
  validates :name, presence: true
  validates :capital, presence: true
  validates :state, presence: true

  belongs_to :state
end
