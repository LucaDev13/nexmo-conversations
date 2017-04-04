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

ActiveRecord::Schema.define(version: 20170404171206) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "event_urls", force: :cascade do |t|
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "uuid"
    t.string   "conversation_uuid"
    t.string   "to"
    t.string   "from"
    t.string   "direction"
    t.string   "recording_url"
    t.string   "rate"
    t.string   "start_time"
    t.string   "network"
    t.string   "status"
    t.string   "price"
    t.string   "duration"
    t.string   "end_time"
    t.string   "dtmf"
  end

  create_table "ncco_connect_actions", force: :cascade do |t|
    t.string   "event_url"
    t.string   "event_method"
    t.string   "backup_url"
    t.string   "backup_method"
    t.string   "timeout"
    t.string   "limit"
    t.string   "from"
    t.string   "halt_on_fail"
    t.string   "endpoint"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "ncco_conversation_actions", force: :cascade do |t|
    t.string   "name"
    t.string   "mute"
    t.string   "earmuff"
    t.string   "event_url"
    t.string   "event_method"
    t.string   "enter_sound"
    t.string   "exit_sound"
    t.string   "music_on_hold_url"
    t.string   "sound_on_enter"
    t.string   "end_on_exit"
    t.string   "location"
    t.string   "moderator_controls"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "ncco_input_actions", force: :cascade do |t|
    t.string   "time_out"
    t.string   "max_digits"
    t.string   "submit_on_hash"
    t.string   "event_url"
    t.string   "event_method"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "ncco_record_actions", force: :cascade do |t|
    t.string   "format"
    t.string   "split"
    t.string   "start_on_answer"
    t.string   "end_on_key"
    t.string   "destination_url"
    t.string   "streamed"
    t.string   "limit"
    t.string   "validity_time"
    t.string   "event_url"
    t.string   "event_method"
    t.string   "backup_url"
    t.string   "backup_method"
    t.string   "beep_start"
    t.string   "beep_finish"
    t.string   "secure"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ncco_stream_actions", force: :cascade do |t|
    t.string   "stream_url"
    t.string   "loop"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ncco_talk_actions", force: :cascade do |t|
    t.string   "loop"
    t.string   "text"
    t.string   "level"
    t.string   "voice_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nccos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
