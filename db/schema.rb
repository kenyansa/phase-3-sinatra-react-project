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

ActiveRecord::Schema.define(version: 2022_06_30_125212) do

  create_table "category", force: :cascade do |t|
    t.integer "task_id"
    t.string "priority"
    t.time "duration"
    t.string "status"
    t.integer "task"
  end

  create_table "priorities", force: :cascade do |t|
    t.integer "task_id"
    t.string "low"
    t.string "medium"
    t.string "high"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name"
    t.string "task_priority"
    t.string "task_description"
    t.datetime "task_date"
    t.time "deadline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "password"
    t.string "firstname"
    t.string "surname"
    t.string "email"
    t.boolean "registered"
    t.integer "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
