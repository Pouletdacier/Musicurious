class FavoritesController < ApplicationController
  def create
    @instrument = Instrument.find(params["instrument_id"])
    @favorite = Favorite.new
    @favorite.instrument = @instrument
    @favorite.user = current_user
    @favorite.save
    # gnagnagna if else
  end
end
