# frozen_string_literal: true

# State model controller
class StatesController < ApplicationController
  def index
    @states = State.all
  end
end
