# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151026004359) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string   "game_name"
    t.integer  "black_player_id"
    t.integer  "white_player_id"
    t.integer  "winner_id"
    t.integer  "current_turn"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "games", ["black_player_id"], name: "index_games_on_black_player_id", using: :btree
  add_index "games", ["white_player_id"], name: "index_games_on_white_player_id", using: :btree

  create_table "pieces", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "player_id"
    t.string   "piece_type"
    t.integer  "current_position_x"
    t.integer  "current_position_y"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "pieces", ["game_id"], name: "index_pieces_on_game_id", using: :btree
  add_index "pieces", ["player_id", "game_id"], name: "index_pieces_on_player_id_and_game_id", using: :btree

end
