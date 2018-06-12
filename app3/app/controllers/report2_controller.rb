class Report2Controller < ApplicationController
  def index
    @seeds = Seed.app2
    @fruits = Fruit.where(seed_id: @seeds.ids)
  end
end
