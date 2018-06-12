class SeederServices
  def self.generate label_prefix
    Seed.create! label: LabelBuilderService.perform(label_prefix)
  end
end
