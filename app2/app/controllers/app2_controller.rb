class App2Controller < ApplicationController
  def index
    render json: {
      seeds: Seed.current_10("2"),
      fruits: Fruit.current_10("j")
    }
  end
end
