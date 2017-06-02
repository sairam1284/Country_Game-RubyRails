class ContinentsController < ApplicationController
  def index
    @conts = Continent.all
  end

  def show
    @continent = Continent.find(params[:id])
    @countries = Country.where(continent_id: @continent.id)
  end
end
