class Report2Controller < ApplicationController
  def index
    data = GetDataService.perform ENV["APP2_URL"]

    @seeds = data["seeds"]
    @fruits = data["fruits"]
  end
end
