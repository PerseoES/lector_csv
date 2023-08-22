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

ActiveRecord::Schema[7.0].define(version: 2022_11_23_141936) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autoevaluacions", force: :cascade do |t|
    t.date "date"
    t.integer "ci"
    t.string "grupo"
    t.string "C1E1_primero"
    t.string "C1E2_primero"
    t.string "C2E1_primero"
    t.string "C2E2_primero"
    t.string "C3E1_primero"
    t.string "C3E2_primero"
    t.string "C4E1_primero"
    t.string "C4E2_primero"
    t.string "C5E1_primero"
    t.string "C5E2_primero"
    t.string "C6E1_primero"
    t.string "C6E2_primero"
    t.string "C7E1_primero"
    t.string "C7E2_primero"
    t.string "C1E1_segundo"
    t.string "C1E2_segundo"
    t.string "C2E1_segundo"
    t.string "C2E2_segundo"
    t.string "C3E1_segundo"
    t.string "C3E3_segundo"
    t.string "C4E1_segundo"
    t.string "C4E2_segundo"
    t.string "C5E3_segundo"
    t.string "C5E4_segundo"
    t.string "C6E1_segundo"
    t.string "C6E2_segundo"
    t.string "C7E3_segundo"
    t.string "C7E4_segundo"
    t.string "C1E1_tercero"
    t.string "C1E3_tercero"
    t.string "C2E2_tercero"
    t.string "C2E3_tercero"
    t.string "C3E4_tercero"
    t.string "C3E5_tercero"
    t.string "C4E2_tercero"
    t.string "C4E3_tercero"
    t.string "C5E3_tercero"
    t.string "C5E4_tercero"
    t.string "C6E2_tercero"
    t.string "C6E3_tercero"
    t.string "C7E4_tercero"
    t.string "C7E5_tercero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cants", force: :cascade do |t|
    t.integer "ci"
    t.integer "C1E1"
    t.integer "C1E2"
    t.integer "C1E3"
    t.integer "C2E1"
    t.integer "C2E2"
    t.integer "C2E3"
    t.integer "C3E1"
    t.integer "C3E2"
    t.integer "C3E3"
    t.integer "C3E4"
    t.integer "C3E5"
    t.integer "C4E1"
    t.integer "C4E2"
    t.integer "C4E3"
    t.integer "C5E1"
    t.integer "C5E2"
    t.integer "C5E3"
    t.integer "C5E4"
    t.integer "C6E1"
    t.integer "C6E2"
    t.integer "C6E3"
    t.integer "C7E1"
    t.integer "C7E2"
    t.integer "C7E3"
    t.integer "C7E4"
    t.integer "C7E5"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "indicators", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.string "documento"
    t.string "alumno"
    t.string "grupo"
    t.text "competencia"
    t.string "período"
    t.string "materia"
    t.string "nivel"
    t.text "descripción"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "t_reports", force: :cascade do |t|
    t.string "documento"
    t.string "alumno"
    t.string "grupo"
    t.string "tipo"
    t.string "período"
    t.string "C1E1"
    t.string "C1E2"
    t.string "C1E3"
    t.string "C2E1"
    t.string "C2E2"
    t.string "C2E3"
    t.string "C3E1"
    t.string "C3E2"
    t.string "C3E3"
    t.string "C3E4"
    t.string "C3E5"
    t.string "C4E1"
    t.string "C4E2"
    t.string "C4E3"
    t.string "C5E1"
    t.string "C5E2"
    t.string "C5E3"
    t.string "C5E4"
    t.string "C6E1"
    t.string "C6E2"
    t.string "C6E3"
    t.string "C7E1"
    t.string "C7E2"
    t.string "C7E3"
    t.string "C7E4"
    t.string "C7E5"
    t.string "promedio_evaluación"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "documento"
    t.string "alumno"
    t.string "grupo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
