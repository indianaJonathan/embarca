# frozen_string_literal: true

Rails.application.routes.draw do
  # Changed root for cities
  root 'cities#index'

  # States
  get '/states', to: 'states#index'

  # Cities
  get '/cities', to: 'cities#index'
end
