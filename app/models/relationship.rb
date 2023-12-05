class Relationship < ApplicationRecord
  has_many :legal_guardians

  after_initialize do
    if self.new_record? && self.active.nil?
      self.active = true
    end
  end

  scope :ordered, -> {order(relationship_type: :asc)}

end
