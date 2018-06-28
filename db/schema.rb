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

ActiveRecord::Schema.define(version: 20180302090731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bolsas", force: :cascade do |t|
    t.integer  "predio_id"
    t.integer  "edital_id"
    t.integer  "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edital_id"], name: "index_bolsas_on_edital_id", using: :btree
    t.index ["predio_id"], name: "index_bolsas_on_predio_id", using: :btree
  end

  create_table "cpfs", force: :cascade do |t|
    t.integer  "numero"
    t.string   "asset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_cpfs_on_usuario_id", using: :btree
  end

  create_table "curriculos", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_curriculos_on_usuario_id", using: :btree
  end

  create_table "declaracoes_de_vinculo", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "inscricao_id"
    t.index ["inscricao_id"], name: "index_declaracoes_de_vinculo_on_inscricao_id", using: :btree
  end

  create_table "editais", force: :cascade do |t|
    t.text     "codigo"
    t.date     "inicio"
    t.date     "termino"
    t.decimal  "cr",          default: "7.0"
    t.text     "descricao"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "asset"
    t.integer  "modalidades", default: 0,     null: false
  end

  create_table "extratos", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "inscricao_id"
    t.index ["inscricao_id"], name: "index_extratos_on_inscricao_id", using: :btree
  end

  create_table "fichas_cadastral", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "inscricao_id"
    t.index ["inscricao_id"], name: "index_fichas_cadastral_on_inscricao_id", using: :btree
  end

  create_table "identidades", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_identidades_on_usuario_id", using: :btree
  end

  create_table "inscricoes", force: :cascade do |t|
    t.integer  "edital_id"
    t.integer  "projeto_id"
    t.integer  "bolsista_id"
    t.integer  "orientador_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["bolsista_id"], name: "index_inscricoes_on_bolsista_id", using: :btree
    t.index ["edital_id"], name: "index_inscricoes_on_edital_id", using: :btree
    t.index ["orientador_id"], name: "index_inscricoes_on_orientador_id", using: :btree
    t.index ["projeto_id"], name: "index_inscricoes_on_projeto_id", using: :btree
  end

  create_table "laboratorios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "acronimo"
    t.integer  "predio_id"
    t.index ["predio_id"], name: "index_laboratorios_on_predio_id", using: :btree
  end

  create_table "planos_de_trabalho", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "usuario_id"
    t.integer  "professor_id"
    t.index ["professor_id"], name: "index_planos_de_trabalho_on_professor_id", using: :btree
    t.index ["usuario_id"], name: "index_planos_de_trabalho_on_usuario_id", using: :btree
  end

  create_table "predios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "acronimo"
  end

  create_table "produtividades", force: :cascade do |t|
    t.string   "asset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.index ["usuario_id"], name: "index_produtividades_on_usuario_id", using: :btree
  end

  create_table "projetos", force: :cascade do |t|
    t.text     "titulo"
    t.string   "keywords"
    t.string   "area"
    t.text     "objetivo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
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
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "telefone"
    t.string   "celular"
    t.integer  "genero"
    t.integer  "matricula"
    t.date     "data_de_nascimento"
    t.string   "lattes"
    t.float    "cr"
    t.integer  "laboratorio_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
    t.index ["laboratorio_id"], name: "index_usuarios_on_laboratorio_id", using: :btree
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree
  end

  create_table "usuarios_roles", id: false, force: :cascade do |t|
    t.integer "usuario_id"
    t.integer "role_id"
    t.index ["usuario_id", "role_id"], name: "index_usuarios_roles_on_usuario_id_and_role_id", using: :btree
  end

  add_foreign_key "bolsas", "editais"
  add_foreign_key "bolsas", "predios"
  add_foreign_key "cpfs", "usuarios"
  add_foreign_key "curriculos", "usuarios"
  add_foreign_key "declaracoes_de_vinculo", "inscricoes"
  add_foreign_key "extratos", "inscricoes"
  add_foreign_key "fichas_cadastral", "inscricoes"
  add_foreign_key "identidades", "usuarios"
  add_foreign_key "inscricoes", "projetos"
  add_foreign_key "inscricoes", "usuarios", column: "bolsista_id"
  add_foreign_key "inscricoes", "usuarios", column: "orientador_id"
  add_foreign_key "laboratorios", "predios"
  add_foreign_key "planos_de_trabalho", "usuarios"
  add_foreign_key "planos_de_trabalho", "usuarios", column: "professor_id"
  add_foreign_key "produtividades", "usuarios"
  add_foreign_key "usuarios", "laboratorios"
end
