class App1Controller < ApplicationController
  def index
    render json: {
      seeds: Seed.current_10("1"),
      fruits: Fruit.current_10("f")
    }
  end
end
