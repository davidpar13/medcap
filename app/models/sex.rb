class Sex < ApplicationRecord
  has_many :patients

  after_initialize do
    if self.new_record? && self.active.nil?
      self.active = true
    end
  end

  scope :ordered, -> {order(sex_name: :asc)}
  scope :active, -> {where(active: true)}

end
