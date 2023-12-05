class Language < ApplicationRecord
  has_many :patients

  after_initialize do
    if self.new_record? && self.active.nil?
      self.active = true
    end
  end

  scope :ordered, -> {order(sort_priority: :asc).order(:language_name)}
end
