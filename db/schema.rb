# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_15_083721) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "achievements", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.string "logotype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "founding_date"
    t.string "logotype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "company_achievements", force: :cascade do |t|
    t.bigint "company_id", null: false
    t.bigint "achievement_id", null: false
    t.index ["achievement_id"], name: "index_company_achievements_on_achievement_id"
    t.index ["company_id"], name: "index_company_achievements_on_company_id"
  end

  create_table "job_postings", force: :cascade do |t|
    t.integer "profile"
    t.bigint "vacancy_id"
    t.string "state", default: "new", null: false
    t.datetime "created_at", null: false
    t.index ["vacancy_id"], name: "index_job_postings_on_vacancy_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "profile"
    t.text "text"
    t.integer "team_rating"
    t.integer "salary_rating"
    t.integer "bureaucracy_rating"
    t.integer "degree_of_workload"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_reviews_on_company_id"
  end

  create_table "vacancies", force: :cascade do |t|
    t.string "title", null: false
    t.string "experience"
    t.string "work_type", null: false
    t.text "responsibilities", null: false
    t.text "requirements", null: false
    t.integer "salary_min"
    t.integer "salary_max"
    t.text "work_conditions", null: false
    t.text "additional_info"
    t.string "address"
    t.bigint "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_vacancies_on_company_id"
  end

  add_foreign_key "company_achievements", "achievements"
  add_foreign_key "company_achievements", "companies"
end
