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

ActiveRecord::Schema[7.0].define(version: 2023_11_29_220315) do
  create_table "languages", force: :cascade do |t|
    t.string "language_name"
    t.boolean "active"
    t.string "sort_priority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legal_guardians", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.date "date_of_birth"
    t.string "phone"
    t.string "email"
    t.integer "relationship_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_legal_guardians_on_patient_id"
    t.index ["relationship_id"], name: "index_legal_guardians_on_relationship_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "mrn"
    t.string "first_name"
    t.string "last_name"
    t.string "middle_initial"
    t.date "date_of_birth"
    t.string "phone"
    t.string "email"
    t.boolean "deceased"
    t.boolean "terminated"
    t.integer "language_id", null: false
    t.integer "sex_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_patients_on_language_id"
    t.index ["sex_id"], name: "index_patients_on_sex_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.string "relationship_type"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.string "sex_name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "legal_guardians", "patients"
  add_foreign_key "legal_guardians", "relationships"
  add_foreign_key "patients", "languages"
  add_foreign_key "patients", "sexes"
end
