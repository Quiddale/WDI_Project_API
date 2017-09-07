# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170905144434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pokemons", force: :cascade do |t|
    t.string "name"
    t.text "image"
    t.string "poketype"
    t.integer "pokedex_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "spot_id", default: 0
  end

  create_table "pokemons_users", id: false, force: :cascade do |t|
    t.bigint "pokemon_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.bigint "world_id"
    t.integer "top"
    t.integer "left"
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["world_id"], name: "index_spots_on_world_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.string "title"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "spots", "worlds"
end
