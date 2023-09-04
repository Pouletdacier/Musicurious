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
  end
end
