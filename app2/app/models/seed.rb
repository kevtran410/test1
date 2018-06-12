class Seed < ApplicationRecord
  has_many :fruits, dependent: :destroy

  scope :random_non_consumed, ->(label_prefix){where(consumed: false)
    .where("label LIKE ?", "#{label_prefix}%").order("RANDOM()").limit(1).first}
end
