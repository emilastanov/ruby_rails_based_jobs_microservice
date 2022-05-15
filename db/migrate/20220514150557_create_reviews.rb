class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.integer :profile
      t.text :text
      t.integer :team_rating
      t.integer :salary_rating
      t.integer :bureaucracy_rating
      t.integer :degree_of_workload
      t.belongs_to :company
      t.timestamps
    end
  end
end
