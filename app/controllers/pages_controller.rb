class PagesController < ApplicationController
  def map
    @instruments = Instrument.all
    @markers = @instruments.geocoded.map do |instrument|
      {
        lat: instrument.latitude,
        lng: instrument.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {instrument: instrument})
      }
    end
  end

  def home
  end

  def serve_avatar
    file = File.open(Rails.root.join("app/assets/images/avatar.png"))
    picture.attach(io: file, filename: "photo.jpg", content_type: "image/jpeg")
  end

end
