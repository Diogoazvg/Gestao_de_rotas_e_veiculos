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

ActiveRecord::Schema.define(version: 2018_05_02_212404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abastecimentos", force: :cascade do |t|
    t.date "data"
    t.float "valor"
    t.float "litros"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veiculo_id"
    t.index ["veiculo_id"], name: "index_abastecimentos_on_veiculo_id"
  end

  create_table "devolucoes", force: :cascade do |t|
    t.float "quilometragem"
    t.boolean "entregou_notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "data"
    t.float "nivel_combustivel"
    t.bigint "veiculo_id"
    t.bigint "usuario_id"
    t.string "status"
    t.string "reserva_id"
    t.index ["usuario_id"], name: "index_devolucoes_on_usuario_id"
    t.index ["veiculo_id"], name: "index_devolucoes_on_veiculo_id"
  end

  create_table "limpezas", force: :cascade do |t|
    t.integer "data"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veiculo_id"
    t.index ["veiculo_id"], name: "index_limpezas_on_veiculo_id"
  end

  create_table "manutencoes", force: :cascade do |t|
    t.integer "data"
    t.float "valor"
    t.string "detalhes"
    t.integer "previsao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veiculo_id"
    t.index ["veiculo_id"], name: "index_manutencoes_on_veiculo_id"
  end

  create_table "reservas", force: :cascade do |t|
    t.float "quilometragem_inicial"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "usuario_id"
    t.bigint "veiculo_id"
    t.date "data_inicial"
    t.integer "nivel_tanque"
    t.string "status"
    t.index ["usuario_id"], name: "index_reservas_on_usuario_id"
    t.index ["veiculo_id"], name: "index_reservas_on_veiculo_id"
  end

  create_table "servicos", force: :cascade do |t|
    t.string "abastecimento"
    t.string "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "matricula"
    t.string "nome"
    t.date "nascimento"
    t.string "funcao"
    t.string "perfil"
    t.string "cnh"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  create_table "veiculos", force: :cascade do |t|
    t.string "marca"
    t.string "modelo"
    t.integer "ano"
    t.string "placa"
    t.string "string", default: "Disponível"
    t.float "quilometragem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tipo"
    t.integer "categoria_cnh"
    t.integer "status"
    t.integer "combustivel"
    t.integer "combustivel2"
  end

  add_foreign_key "abastecimentos", "veiculos"
  add_foreign_key "devolucoes", "usuarios"
  add_foreign_key "devolucoes", "veiculos"
  add_foreign_key "limpezas", "veiculos"
  add_foreign_key "manutencoes", "veiculos"
  add_foreign_key "reservas", "usuarios"
  add_foreign_key "reservas", "veiculos"
end
