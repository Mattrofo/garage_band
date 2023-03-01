class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:home]

  def home
    @garages = Garage.all
    @markers = @garages.geocoded.map do |garage|
      {
        lat: garage.latitude,
        lng: garage.longitude,
        info_window_html: render_to_string(partial: "garages/info_window", locals: {garage: garage}),
        marker_html: render_to_string(partial: "garages/marker")
      }
    end
  end

  def componant
  end

end
