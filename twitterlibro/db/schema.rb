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

ActiveRecord::Schema.define(:version => 20121011124755) do

  create_table "clientes", :force => true do |t|
    t.string   "email"
    t.string   "nombre"
    t.string   "dirtwitter"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "libros", :force => true do |t|
    t.string   "titulo"
    t.text     "comentario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "prestamos", :force => true do |t|
    t.date     "fi_prestamo"
    t.date     "ff_prestamo"
    t.date     "fechadevolucion"
    t.integer  "cliente_id"
    t.integer  "libro_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "prestamos", ["cliente_id"], :name => "index_prestamos_on_cliente_id"
  add_index "prestamos", ["libro_id"], :name => "index_prestamos_on_libro_id"

end
