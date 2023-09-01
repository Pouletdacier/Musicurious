class PagesController < ApplicationController
  def map
    @instruments = Instrument.all
    @markers = @instruments.geocoded.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {instrument: instrument}),
        # marker_html: render_to_string(partial: "marker")
      }
    end
  end

  def home
  end
end
