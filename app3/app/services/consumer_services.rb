class ConsumerServices
  def self.generate_fruit seed_prefix, label_prefix
    seed = get_seed(seed_prefix)
    return unless seed.present?

    fruit = Fruit.new seed_id: seed.id, label: LabelBuilderService.perform(label_prefix)

    seed.update_attributes consumed: true if fruit.save
  end

  private
  def self.get_seed label_prefix
    Seed.random_non_consumed label_prefix
  end
end
