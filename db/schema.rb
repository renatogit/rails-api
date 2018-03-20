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

ActiveRecord::Schema.define(version: 20180320011040) do

  create_table "clientes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.string "cpf"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_pedidos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "produtos_id"
    t.bigint "cliente_id"
    t.index ["cliente_id"], name: "index_item_pedidos_on_cliente_id"
    t.index ["produtos_id"], name: "index_item_pedidos_on_produtos_id"
  end

  create_table "pedido_compras", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer "num_pedido"
    t.date "data_pedido"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.bigint "item_pedido_id"
    t.index ["item_pedido_id"], name: "index_pedido_compras_on_item_pedido_id"
  end

  create_table "produtos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nome"
    t.decimal "val_unitario", precision: 15, scale: 2
    t.string "cod_barras"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "item_pedidos", "clientes"
  add_foreign_key "item_pedidos", "produtos", column: "produtos_id"
  add_foreign_key "pedido_compras", "item_pedidos"
end
