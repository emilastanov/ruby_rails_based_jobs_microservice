class Vacancy < ApplicationRecord
  belongs_to :company
  has_many :job_postings
end
