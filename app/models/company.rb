class Company < ApplicationRecord
  has_many :company_achievements
  has_many :achievements, through: :company_achievements
  has_many :reviews
  has_many :vacancies
end
