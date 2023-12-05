class LegalGuardian < ApplicationRecord
  belongs_to :relationship
  belongs_to :patient

end
