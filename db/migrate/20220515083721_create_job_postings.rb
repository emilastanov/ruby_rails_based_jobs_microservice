class CreateJobPostings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_postings do |t|
      t.integer :profile_id
      t.belongs_to :vacancy
      t.string :state, default: 'new', null: false

      t.timestamps
    end
    remove_column :job_postings, :updated_at
  end
end
