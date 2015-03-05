class WeatherController < ApplicationController
  def index
    render :index
  end

  def show
    if params[:zipcode] == "94702"
      @message = ["Sun's gonna be shinning!", "No umbrella needed."]
    else
      @message = ["Oh the pouring rain!", "Grab your umbrella!"]
    end
  end

  def search
    
  end
end
