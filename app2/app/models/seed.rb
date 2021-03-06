class Seed < ApplicationRecord
  has_many :fruits, dependent: :destroy

  scope :random_non_consumed, ->(label_prefix){where(consumed: false)
    .where("label LIKE ?", "#{label_prefix}%").order("RANDOM()").limit(1).first}

  scope :current_10, ->(label_prefix){where("label LIKE ?", "#{label_prefix}%")
    .order("id DESC").limit(10)}
end
