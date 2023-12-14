class Patient < ApplicationRecord
  belongs_to :language
  belongs_to :sex
  has_many :legal_guardians

  accepts_nested_attributes_for :legal_guardians, allow_destroy: true


end
