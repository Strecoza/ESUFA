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

ActiveRecord::Schema[8.0].define(version: 2025_08_13_031616) do
  create_table "course_offerings", force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "trimester_id", null: false
    t.integer "capacity"
    t.integer "status"
    t.string "room"
    t.string "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_course_offerings_on_course_id"
    t.index ["trimester_id"], name: "index_course_offerings_on_trimester_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enrollments", force: :cascade do |t|
    t.integer "student_profile_id", null: false
    t.integer "course_offering_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_offering_id"], name: "index_enrollments_on_course_offering_id"
    t.index ["student_profile_id"], name: "index_enrollments_on_student_profile_id"
  end

  create_table "student_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "grade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_student_profiles_on_user_id"
  end

  create_table "teacher_assignments", force: :cascade do |t|
    t.integer "teacher_profile_id", null: false
    t.integer "course_offering_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_offering_id"], name: "index_teacher_assignments_on_course_offering_id"
    t.index ["teacher_profile_id"], name: "index_teacher_assignments_on_teacher_profile_id"
  end

  create_table "teacher_profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "subject"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "preferred_name"
    t.index ["user_id"], name: "index_teacher_profiles_on_user_id"
  end

  create_table "trimesters", force: :cascade do |t|
    t.string "name", null: false
    t.date "start_date", null: false
    t.date "end_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "start_date"], name: "index_trimesters_on_name_and_start_date", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "role", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["role"], name: "index_users_on_role"
  end

  add_foreign_key "course_offerings", "courses"
  add_foreign_key "course_offerings", "trimesters"
  add_foreign_key "enrollments", "course_offerings"
  add_foreign_key "enrollments", "student_profiles"
  add_foreign_key "student_profiles", "users"
  add_foreign_key "teacher_assignments", "course_offerings"
  add_foreign_key "teacher_assignments", "teacher_profiles"
  add_foreign_key "teacher_profiles", "users"
end
