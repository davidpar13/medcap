class Language < ApplicationRecord
  has_many :patients

  validate :sort_priority

  after_initialize do
    if self.new_record? && self.active.nil?
      self.active = true
    end
  end

  scope :ordered, -> {order(sort_priority: :asc).order(:language_name)}
  scope :active, -> {where(active: true)}
end
