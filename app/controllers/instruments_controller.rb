class InstrumentsController < ApplicationController
  def index
    if params[:search]
      @instruments = Instrument.search(params[:search])
    else
      @instruments = Instrument.all
    end
  end

  def discovery
    @instruments = Instrument.all
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
