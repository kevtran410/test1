class Report1Controller < ApplicationController
  def index
    data = GetDataService.perform ENV["APP1_URL"]

    @seeds = data["seeds"]
    @fruits = data["fruits"]
  end
end
