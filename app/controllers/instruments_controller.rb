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
end
