class Fruit < ApplicationRecord
  belongs_to :seed

  validates :seed, presence: true

  scope :current_10, ->{where("label LIKE ?", "#{label_prefix}%").order("id DESC").limit(10)}
end
