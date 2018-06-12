class App2Controller < ApplicationController
  def index
    render json: {
      seeds: Seed.current_10,
      fruits: Fruit.current_10
    }
  end
end
