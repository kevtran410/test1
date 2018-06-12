class Fruit < ApplicationRecord
  belongs_to :seed

  validates :seed, presence: true
end
