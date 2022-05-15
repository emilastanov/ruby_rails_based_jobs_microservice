class CreateCompanyAchievements < ActiveRecord::Migration[7.0]
  def change
    create_table :company_achievements do |t|
      t.belongs_to :company, null: false, foreign_key: true
      t.belongs_to :achievement, null: false, foreign_key: true
    end
  end
end
