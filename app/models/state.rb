# frozen_string_literal: true

# State model
class State < ApplicationRecord
  has_many :city, dependent: :destroy
end
