class ContinentsController < ApplicationController
  def index
    @conts = Continent.where.not(cont: " All")
  end

  def show
    @continent = Continent.find(params[:id])
    @countries = Country.where(continent_id: @continent.id)
    @country_array = []
    @countries.each do |c|
      @country_array << c.country
    end
    @country_count = @country_array.size
  end
end
