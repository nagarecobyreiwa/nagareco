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

ActiveRecord::Schema.define(version: 2019_05_19_044002) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disks", force: :cascade do |t|
    t.string "name"
    t.integer "order"
    t.datetime "deleted_at"
    t.integer "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_disks_on_product_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "image_id"
    t.integer "price"
    t.integer "stock"
    t.boolean "on_sale"
    t.datetime "deleted_at"
    t.integer "artist_id"
    t.integer "genre_id"
    t.integer "label_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_products_on_artist_id"
    t.index ["genre_id"], name: "index_products_on_genre_id"
    t.index ["label_id"], name: "index_products_on_label_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.time "time"
    t.integer "order"
    t.integer "disk_id"
    t.datetime "deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disk_id"], name: "index_songs_on_disk_id"
  end

end
