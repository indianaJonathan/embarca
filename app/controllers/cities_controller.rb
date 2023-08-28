# frozen_string_literal: true

# City model controller
class CitiesController < ApplicationController
  def index
    @cities = City.all

    return unless params[:search_by_name] && params[:search_by_name] != ''

    search_by_name

    return unless params[:search_by_state] && params[:search_by_state] != ''

    search_by_state
  end

  private

  def search_by_name
    @cities = City.where('cities.name ilike ?', "%#{params[:search_by_name]}%")
  end

  def search_by_state
    @cities = City.joins('INNER JOIN states ON states.id = cities.state_id').where(
      'states.symbol ilike ? or states.name ilike ?', "%#{params[:search_by_state]}%", "%#{params[:search_by_state]}%"
    )
  end
end
