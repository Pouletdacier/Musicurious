class InstrumentsController < ApplicationController
  def index
    @instruments = Instrument.all
  end

  def discovery
    @instruments = Instrument.all
  end

  def show
    @instrument = Instrument.find(params[:id])
  end

  def search
    @instruments = Instrument.search(params[:query])
    render 'index' # ou la vue que vous souhaitez montrer
  end

end
