class Patient < ApplicationRecord
  belongs_to :language
  belongs_to :sex
  has_many :legal_guardians

end
