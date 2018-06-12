class Report1Controller < ApplicationController
  def index
    @seeds = Seed.app1
    @fruits = Fruit.where(seed_id: @seeds.ids)
  end
end
