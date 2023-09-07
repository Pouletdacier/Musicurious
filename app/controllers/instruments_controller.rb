class InstrumentsController < ApplicationController
  def index
    # if params[:search]
    #   @instruments = Instrument.search(params[:search])
    # else
    #   @instruments = Instrument.all
    # end

    @instruments = Instrument.all.except(image: nil)
    if params[:search]
      @instruments.search(params[:search])
    else
      @instruments
    end


    # favourites
    if params[:favourite] == "1"
      fav_instruments_ids = Favorite.where(user: current_user).pluck(:instrument_id)
      @instruments = @instruments.where(id: fav_instruments_ids)
    end

    # @instruments = Instrument.all
    if params[:zones].present?
      @instruments = @instruments.where(geographical_region: params[:zones])
    end
    if params[:families].present?
      @instruments = @instruments.where(family: params[:families])
    end
  end

  def discovery
    @instruments = Instrument.all.except(picture: nil).shuffle
  end

  def show
    @instrument = Instrument.find(params[:id])
    @random_instruments = Instrument.order('RANDOM()').limit(2)
  end

  def search
    @instruments = Instrument.search(params[:query])
    render 'index' # ou la vue que vous souhaitez montrer
  end

end
