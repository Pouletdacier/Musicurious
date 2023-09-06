class FavoritesController < ApplicationController
  def create
    # @favorites = Favorite.all
    @instrument = Instrument.find(params["instrument_id"])
    @favorite = Favorite.new(user: current_user, instrument: @instrument)
    # @favorite.instrument = @instrument
    # @favorite.user = current_user
    if !@favorite.save
      flash[:notice] = @favorite.errors.full_messages.to_sentence
    end
  end
end
