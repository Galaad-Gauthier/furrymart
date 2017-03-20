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

ActiveRecord::Schema.define(version: 20170320080603) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "activities", force: :cascade do |t|
    t.string   "trackable_type"
    t.integer  "trackable_id"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "key"
    t.text     "parameters"
    t.string   "recipient_type"
    t.integer  "recipient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
    t.index ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
    t.index ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "ahoy_events", force: :cascade do |t|
    t.integer  "visit_id"
    t.integer  "user_id"
    t.string   "name"
    t.jsonb    "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time", using: :btree
    t.index ["user_id", "name"], name: "index_ahoy_events_on_user_id_and_name", using: :btree
    t.index ["visit_id", "name"], name: "index_ahoy_events_on_visit_id_and_name", using: :btree
  end

  create_table "announcement_comments", force: :cascade do |t|
    t.integer  "announcement_id"
    t.integer  "sender_id"
    t.text     "body"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["announcement_id"], name: "index_announcement_comments_on_announcement_id", using: :btree
    t.index ["sender_id"], name: "index_announcement_comments_on_sender_id", using: :btree
  end

  create_table "announcements", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "slug"
    t.boolean  "draft",      default: true
    t.string   "author"
  end

  create_table "assets", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "is_adult_content", default: false
    t.boolean  "is_deleted",       default: false
    t.string   "description"
    t.integer  "gravity_x"
    t.integer  "gravity_y"
    t.string   "gravity"
    t.string   "s3_file_url"
    t.index ["user_id"], name: "index_assets_on_user_id", using: :btree
  end

  create_table "attachments", force: :cascade do |t|
    t.string   "file_url"
    t.integer  "quotation_comment_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "original_filename"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.index ["quotation_comment_id"], name: "index_attachments_on_quotation_comment_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_styles", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "style_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_categories_styles_on_category_id", using: :btree
    t.index ["style_id"], name: "index_categories_styles_on_style_id", using: :btree
  end

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "species"
    t.text     "description"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "slug"
    t.boolean  "is_deleted",  default: false
    t.integer  "banner_id"
    t.boolean  "visible",     default: false
    t.index ["banner_id"], name: "index_characters_on_banner_id", using: :btree
    t.index ["slug"], name: "index_characters_on_slug", using: :btree
    t.index ["user_id"], name: "index_characters_on_user_id", using: :btree
  end

  create_table "characters_assets", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "asset_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["asset_id"], name: "index_characters_assets_on_asset_id", using: :btree
    t.index ["character_id"], name: "index_characters_assets_on_character_id", using: :btree
  end

  create_table "characters_pictures", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "picture_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_characters_pictures_on_character_id", using: :btree
    t.index ["picture_id"], name: "index_characters_pictures_on_picture_id", using: :btree
  end

  create_table "currencies", force: :cascade do |t|
    t.string   "name"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "usd_rate"
  end

  create_table "delays", force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rank"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "attachment"
    t.index ["user_id"], name: "index_feedbacks_on_user_id", using: :btree
  end

  create_table "follows", force: :cascade do |t|
    t.string   "followable_type",                 null: false
    t.integer  "followable_id",                   null: false
    t.string   "follower_type",                   null: false
    t.integer  "follower_id",                     null: false
    t.boolean  "blocked",         default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["followable_id", "followable_type"], name: "fk_followables", using: :btree
    t.index ["follower_id", "follower_type"], name: "fk_follows", using: :btree
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "invoice_reference"
    t.float    "price"
    t.text     "invoicing_informations"
    t.text     "additional_informations"
    t.string   "vat_number"
    t.string   "currency_uid"
    t.datetime "due_date"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "company_id"
    t.string   "invoicing_paypal_address"
    t.integer  "quotation_id"
    t.string   "state"
  end

  create_table "mass_mails", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.string   "recipients"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.text     "body"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "read",         default: false
    t.index ["recipient_id"], name: "index_messages_on_recipient_id", using: :btree
    t.index ["sender_id"], name: "index_messages_on_sender_id", using: :btree
  end

  create_table "news", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "is_adult_content", default: false
    t.boolean  "is_deleted",       default: false
    t.string   "description"
    t.integer  "gravity_x"
    t.integer  "gravity_y"
    t.string   "gravity"
    t.string   "s3_file_url"
    t.index ["user_id"], name: "index_pictures_on_user_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "biography"
    t.hstore   "sites",            default: {}
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "certified_sites",  default: [],              array: true
    t.integer  "proposals_order",  default: [],              array: true
    t.integer  "characters_order", default: [],              array: true
    t.string   "s3_avatar_url"
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "proposals", force: :cascade do |t|
    t.text     "description"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "banner"
    t.string   "slug"
    t.integer  "artist_id"
    t.integer  "price"
    t.boolean  "visible",               default: false
    t.string   "title"
    t.text     "tos"
    t.boolean  "is_deleted",            default: false
    t.boolean  "can_pay_what_you_want", default: false
    t.string   "currency_uid"
    t.float    "usd_price"
    t.integer  "banner_id"
    t.integer  "style_id"
    t.integer  "delay_id"
    t.integer  "category_id"
    t.integer  "wishes_count",          default: 0
    t.index ["artist_id"], name: "index_proposals_on_artist_id", using: :btree
    t.index ["banner_id"], name: "index_proposals_on_banner_id", using: :btree
    t.index ["slug"], name: "index_proposals_on_slug", using: :btree
  end

  create_table "proposals_assets", force: :cascade do |t|
    t.integer  "proposal_id"
    t.integer  "asset_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["asset_id"], name: "index_proposals_assets_on_asset_id", using: :btree
    t.index ["proposal_id"], name: "index_proposals_assets_on_proposal_id", using: :btree
  end

  create_table "proposals_pictures", force: :cascade do |t|
    t.integer  "proposal_id"
    t.integer  "picture_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["picture_id"], name: "index_proposals_pictures_on_picture_id", using: :btree
    t.index ["proposal_id"], name: "index_proposals_pictures_on_proposal_id", using: :btree
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.text     "body"
    t.text     "response"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["recipient_id"], name: "index_questions_on_recipient_id", using: :btree
    t.index ["sender_id"], name: "index_questions_on_sender_id", using: :btree
  end

  create_table "quotation_comments", force: :cascade do |t|
    t.integer  "quotation_id"
    t.integer  "sender_id"
    t.text     "body"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "s3_attachment_url"
    t.index ["quotation_id"], name: "index_quotation_comments_on_quotation_id", using: :btree
    t.index ["sender_id"], name: "index_quotation_comments_on_sender_id", using: :btree
  end

  create_table "quotations", force: :cascade do |t|
    t.integer  "commissioner_id"
    t.integer  "proposal_id"
    t.text     "description"
    t.string   "state"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.boolean  "tos_accepted",            default: false
    t.integer  "artist_id"
    t.string   "refuse_reason"
    t.string   "refuse_comment"
    t.string   "commissioner_rating"
    t.string   "artist_rating"
    t.boolean  "public_for_artist",       default: false
    t.boolean  "public_for_commissioner", default: false
    t.index ["artist_id"], name: "index_quotations_on_artist_id", using: :btree
    t.index ["commissioner_id"], name: "index_quotations_on_commissioner_id", using: :btree
    t.index ["proposal_id"], name: "index_quotations_on_proposal_id", using: :btree
    t.index ["state"], name: "index_quotations_on_state", using: :btree
  end

  create_table "quotations_assets", force: :cascade do |t|
    t.integer  "quotation_id"
    t.integer  "asset_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["asset_id"], name: "index_quotations_assets_on_asset_id", using: :btree
    t.index ["quotation_id"], name: "index_quotations_assets_on_quotation_id", using: :btree
  end

  create_table "quotations_characters", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "quotation_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["character_id"], name: "index_quotations_characters_on_character_id", using: :btree
    t.index ["quotation_id"], name: "index_quotations_characters_on_quotation_id", using: :btree
  end

  create_table "quotations_pictures", force: :cascade do |t|
    t.integer  "quotation_id"
    t.integer  "picture_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["picture_id"], name: "index_quotations_pictures_on_picture_id", using: :btree
    t.index ["quotation_id"], name: "index_quotations_pictures_on_quotation_id", using: :btree
  end

  create_table "read_marks", force: :cascade do |t|
    t.string   "readable_type", null: false
    t.integer  "readable_id"
    t.string   "reader_type",   null: false
    t.integer  "reader_id"
    t.datetime "timestamp"
    t.index ["reader_id", "reader_type", "readable_type", "readable_id"], name: "read_marks_reader_readable_index", unique: true, using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "reporter_id"
    t.text     "body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["reporter_id"], name: "index_reports_on_reporter_id", using: :btree
    t.index ["user_id"], name: "index_reports_on_user_id", using: :btree
  end

  create_table "styles", force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["context"], name: "index_taggings_on_context", using: :btree
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
    t.index ["tag_id"], name: "index_taggings_on_tag_id", using: :btree
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy", using: :btree
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id", using: :btree
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type", using: :btree
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type", using: :btree
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true, using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                               default: "",    null: false
    t.string   "encrypted_password",                  default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.string   "name"
    t.string   "language"
    t.boolean  "show_adult_content"
    t.string   "slug"
    t.hstore   "notifications_permissions",           default: {}
    t.boolean  "is_deleted",                          default: false
    t.float    "artist_rating",                       default: 0.0
    t.float    "commissioner_rating",                 default: 0.0
    t.boolean  "are_assets_public",                   default: false
    t.string   "vat_number"
    t.text     "commissioner_invoicing_informations"
    t.text     "artist_invoicing_informations"
    t.string   "company_id"
    t.string   "invoicing_paypal_address"
    t.string   "billing_paypal_address"
    t.boolean  "has_business_paypal",                 default: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["slug"], name: "index_users_on_slug", using: :btree
  end

  create_table "visits", force: :cascade do |t|
    t.string   "visit_token"
    t.string   "visitor_token"
    t.string   "ip"
    t.text     "user_agent"
    t.text     "referrer"
    t.text     "landing_page"
    t.integer  "user_id"
    t.string   "referring_domain"
    t.string   "search_keyword"
    t.string   "browser"
    t.string   "os"
    t.string   "device_type"
    t.integer  "screen_height"
    t.integer  "screen_width"
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.string   "postal_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_term"
    t.string   "utm_content"
    t.string   "utm_campaign"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_visits_on_user_id", using: :btree
    t.index ["visit_token"], name: "index_visits_on_visit_token", unique: true, using: :btree
  end

  create_table "wishes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "proposal_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["proposal_id"], name: "index_wishes_on_proposal_id", using: :btree
    t.index ["user_id"], name: "index_wishes_on_user_id", using: :btree
  end

end
