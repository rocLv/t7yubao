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

ActiveRecord::Schema.define(version: 20151007021423) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forecast_models", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forecasts", force: :cascade do |t|
    t.integer  "city_id"
    t.datetime "start_date"
    t.string   "weather"
    t.string   "wind_dir"
    t.string   "wind_speed"
    t.integer  "t_max"
    t.integer  "t_min"
    t.integer  "visibility"
    t.string   "visibility_unit"
    t.integer  "sunglass_index_id"
    t.integer  "clothes_index_id"
    t.integer  "travel_index_id"
    t.integer  "sport_index_id"
    t.integer  "makeup_index_id"
    t.integer  "cold_index_id"
    t.integer  "uv_index_id"
    t.integer  "confort_index_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "highs", force: :cascade do |t|
    t.datetime "timers"
    t.integer  "station"
    t.integer  "level"
    t.float    "height"
    t.float    "temprature"
    t.float    "t_td"
    t.float    "wind_dir"
    t.float    "wind_speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_catalogues", force: :cascade do |t|
    t.integer  "model_id"
    t.string   "catalogue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "procut_catalogue_id"
    t.string   "element"
    t.datetime "start_date"
    t.integer  "valid"
    t.string   "path"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surfaces", force: :cascade do |t|
    t.integer  "station"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "height"
    t.integer  "rank"
    t.integer  "sum_of_cloud"
    t.integer  "wind_dir"
    t.integer  "wind_speed"
    t.integer  "pressure"
    t.integer  "pressure_change_3h"
    t.integer  "past_weather_1"
    t.integer  "past_weather_2"
    t.integer  "precipitation"
    t.integer  "status_of_low_cloud"
    t.integer  "amount_of_low_cloud"
    t.integer  "height_of_low_cloud"
    t.integer  "dew_poin"
    t.integer  "visibility"
    t.integer  "weather"
    t.integer  "t"
    t.integer  "status_of_mid_cloud"
    t.integer  "status_of_high_cloud"
    t.integer  "temprature_change_24h"
    t.integer  "pressure_change_24h"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "typhoon_forecast_paths", force: :cascade do |t|
    t.integer  "typhoon_id"
    t.datetime "start_time"
    t.integer  "valid"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "wind"
    t.integer  "pressure"
    t.integer  "range_50_knots_of_NE"
    t.integer  "range_30_knots_NE"
    t.integer  "range_50_knots_of_SE"
    t.integer  "range_30_knots_of_SE"
    t.integer  "range_50_knots_of_SW"
    t.integer  "range_30_knots_of_NW"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "typhoon_paths", force: :cascade do |t|
    t.integer  "typhoon_id"
    t.datetime "then_time"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "wind"
    t.integer  "pressure"
    t.integer  "range_50_knots_of_NE"
    t.integer  "range_30_knots_NE"
    t.integer  "range_50_knots_of_SE"
    t.integer  "range_30_knots_of_SE"
    t.integer  "range_50_knots_of_SW"
    t.integer  "range_30_knots_of_NW"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "typhoons", force: :cascade do |t|
    t.string   "cn_name"
    t.string   "en_name"
    t.integer  "cn_id"
    t.integer  "international_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
