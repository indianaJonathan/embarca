# frozen_string_literal: true

# City model
class City < ApplicationRecord
  belongs_to :state
end
