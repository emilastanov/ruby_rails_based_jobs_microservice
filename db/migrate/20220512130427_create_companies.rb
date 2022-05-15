class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :founding_date
      t.string :logotype

      t.timestamps
    end
  end
end
