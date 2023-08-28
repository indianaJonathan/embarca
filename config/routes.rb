# frozen_string_literal: true

Rails.application.routes.draw do
  # States
  get '/states', to: 'states#index'

  # Cities
  get '/cities', to: 'cities#index'
end
