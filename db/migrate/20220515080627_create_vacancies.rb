class CreateVacancies < ActiveRecord::Migration[7.0]
  def change
    create_table :vacancies do |t|
      t.string :title, null: false
      t.string :experience
      t.string :work_type, null: false
      t.text :responsibilities, null: false
      t.text :requirements, null: false
      t.integer :salary_min
      t.integer :salary_max
      t.text :work_conditions, null: false
      t.text :additional_info
      t.string :address
      t.belongs_to :company

      t.timestamps
    end
  end
end
