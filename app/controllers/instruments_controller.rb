class InstrumentsController < ApplicationController
  def index
    # if params[:search]
    #   @instruments = Instrument.search(params[:search])
    # else
    #   @instruments = Instrument.all
    # end

    @instruments = Instrument.includes(:picture_blob).where.not(picture_blob: { key: nil}).shuffle

    if params[:search]
      @instruments.search(params[:search])
    else
      @instruments
    end


    # favourites
    if params[:favourite] == "1"
      fav_instruments_ids = Favorite.where(user: current_user).pluck(:instrument_id)
      @instruments = @instruments.select { |instrument| fav_instruments_ids.include?(instrument.id) }
    end

    # @instruments = Instrument.all
    if params[:zones].present?
      # @instruments = @instruments.where(geographical_region: params[:zones])
      # @instruments = @instruments.select(geographical_region: params[:zones])
      @instruments = @instruments.select { |instrument| params[:zones].include?(instrument.geographical_region) }
    end

    if params[:families].present?
      # @instruments = @instruments.where(family: params[:families])
      @instruments = @instruments.select { |instrument| params[:families].include?(instrument.family) }
    end
  end

  def discovery
    @instruments = Instrument.includes(:picture_blob).where.not(picture_blob: { key: nil}).shuffle
  end

  # def show
  #   @instrument = Instrument.find(params[:id])
  #   @random_instruments = Instrument.order('RANDOM()').limit(2)
  # end

  def show
    @instrument = Instrument.find(params[:id])
    @random_instruments = Instrument.includes(:picture_blob).where.not(picture_blob: { key: nil}).order('RANDOM()').limit(2)
  end

  def search
    @instruments = Instrument.search(params[:query])
    render 'index' # ou la vue que vous souhaitez montrer
  end

end
