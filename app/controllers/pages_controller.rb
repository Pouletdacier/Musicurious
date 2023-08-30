class PagesController < ApplicationController
  def home
    @instruments = Instrument.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @instruments.geocoded.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude
      }
    end
  end
end
