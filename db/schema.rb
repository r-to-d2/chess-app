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

ActiveRecord::Schema.define(version: 20151028083735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "game_moves", force: :cascade do |t|
    t.integer  "match_id"
    t.string   "piece_name"
    t.boolean  "black_piece"
    t.integer  "from_coord_x"
    t.integer  "from_coord_y"
    t.integer  "to_coord_x"
    t.integer  "to_coord_y"
    t.string   "algebraic_notation"
    t.string   "captured_piece"
    t.boolean  "castled"
    t.string   "promotion_choice"
    t.boolean  "en_passant"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "game_moves", ["match_id"], name: "index_game_moves_on_match_id", using: :btree

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_invites", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "host_id"
    t.integer  "guest_id"
    t.boolean  "accepted"
    t.boolean  "guest_chose_black"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "match_invites", ["guest_id"], name: "index_match_invites_on_guest_id", using: :btree
  add_index "match_invites", ["host_id"], name: "index_match_invites_on_host_id", using: :btree

  create_table "matches", force: :cascade do |t|
    t.string   "name"
    t.integer  "black_player_id"
    t.integer  "white_player_id"
    t.integer  "winner_id"
    t.integer  "draw_offerer_id"
    t.boolean  "game_active"
    t.integer  "num_turns"
    t.boolean  "black_turn"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "matches", ["black_player_id"], name: "index_matches_on_black_player_id", using: :btree
  add_index "matches", ["white_player_id"], name: "index_matches_on_white_player_id", using: :btree

  create_table "pieces", force: :cascade do |t|
    t.integer  "match_id"
    t.integer  "player_id"
    t.string   "piece_type"
    t.integer  "num_moves"
    t.boolean  "captured"
    t.boolean  "fromPawn"
    t.integer  "current_position_x"
    t.integer  "current_position_y"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "pieces", ["match_id"], name: "index_pieces_on_match_id", using: :btree
  add_index "pieces", ["player_id", "match_id"], name: "index_pieces_on_player_id_and_match_id", using: :btree

end
