class Achievement < ApplicationRecord
  has_many :company_achievements
  has_many :companies, through: :company_achievements
end
