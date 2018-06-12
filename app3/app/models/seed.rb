class Seed < ApplicationRecord
  has_many :fruits, dependent: :destroy

  scope :app1, ->{where("label LIKE '1%'").order(id: :desc).limit(10)}
  scope :app2, ->{where("label LIKE '2%'").order(id: :desc).limit(10)}

  scope :random_non_consumed, ->(label_prefix){where(consumed: false)
    .where("label LIKE ?", "#{label_prefix}%").order("RANDOM()").limit(1).first}
end
