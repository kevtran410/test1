class LabelBuilderService
  def self.perform label_prefix
    return unless label_prefix.present?
    "#{label_prefix}-#{SecureRandom.hex}"
  end
end
