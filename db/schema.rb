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

ActiveRecord::Schema.define(version: 20160727095514) do

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

end
