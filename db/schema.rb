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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131230201807) do

  create_table "attivita", :force => true do |t|
    t.text     "descrizione"
    t.integer  "allegato_id"
    t.integer  "utente_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.date     "data"
  end

  create_table "calendari", :force => true do |t|
    t.text     "descrizione"
    t.integer  "utente_id"
    t.integer  "gruppo_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "commenti", :force => true do |t|
    t.text     "testo"
    t.integer  "allegato_id"
    t.integer  "utente_id"
    t.integer  "attivita_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "condivisi", :force => true do |t|
    t.integer  "calendario_id"
    t.integer  "attivitum_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "conversazioni", :force => true do |t|
    t.text     "descrizione"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "gruppi", :force => true do |t|
    t.string   "nome"
    t.text     "manifesto"
    t.integer  "libro_id"
    t.string   "classe"
    t.integer  "scuola_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "messaggi", :force => true do |t|
    t.text     "testo"
    t.integer  "allegato_id"
    t.integer  "utente_id"
    t.integer  "conversazione_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "partecipantes", :force => true do |t|
    t.integer  "conversazione_id"
    t.integer  "utente_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "partecipanti_gruppi", :force => true do |t|
    t.integer  "utente_id"
    t.integer  "gruppo_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "utenti", :force => true do |t|
    t.string   "nome"
    t.string   "cognome"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "codice_fiscale"
    t.date     "anno_di_nascita"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
