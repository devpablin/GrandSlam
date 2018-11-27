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

ActiveRecord::Schema.define(version: 20181102152033) do

  create_table "anio", primary_key: "id_a", id: :string, limit: 7, force: :cascade do |t|
    t.integer "anio", limit: 7, precision: 7
  end

  create_table "ar111_arbitro", primary_key: "id_arbitro", force: :cascade do |t|
    t.integer "id_perso", precision: 38, null: false
    t.integer "id_nacio", precision: 38, null: false
  end

  create_table "ar111_arbitro_partido", primary_key: "id_arbitro_partido", force: :cascade do |t|
    t.integer "id_arb", precision: 38, null: false
    t.integer "id_parti", precision: 38, null: false
    t.integer "id_tar", precision: 38, null: false
  end

  create_table "ar111_ciudad", primary_key: "id_ciudad", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.integer "id_pais", precision: 38, null: false
  end

  create_table "ar111_entrenador", primary_key: "id_entrenador", force: :cascade do |t|
    t.integer "id_per", precision: 38, null: false
    t.integer "id_naci", precision: 38, null: false
  end

  create_table "ar111_fase", primary_key: "id_fase", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
  end

  create_table "ar111_genero", force: :cascade do |t|
    t.string "nombre", limit: 10, null: false
  end

  create_table "ar111_gestion", primary_key: "id_gestion", force: :cascade do |t|
    t.integer "gestion", precision: 38, null: false
  end

  create_table "ar111_jugador", primary_key: "id_jugador", force: :cascade do |t|
    t.decimal "peso", precision: 5, scale: 2, null: false
    t.decimal "estatura", precision: 5, scale: 2, null: false
    t.integer "id_pers", precision: 38, null: false
  end

  create_table "ar111_jugador_torneo", primary_key: "id_jugador_torneo", force: :cascade do |t|
    t.integer "id_jug", precision: 38, null: false
    t.integer "id_tor", precision: 38, null: false
    t.integer "id_ent", precision: 38, null: false
    t.integer "id_nac", precision: 38, null: false
    t.decimal "ganancias", precision: 10, scale: 1, null: false
  end

  create_table "ar111_modalidad", primary_key: "id_modalidad", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
  end

  create_table "ar111_nacionalidad", primary_key: "id_nacionalidad", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.integer "id_pais", precision: 38, null: false
  end

  create_table "ar111_pais", primary_key: "id_pais", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.integer "anfitrion", precision: 38, null: false
  end

  create_table "ar111_partido", primary_key: "id_partido", force: :cascade do |t|
    t.date "fecha", null: false
    t.datetime "hora_ini", precision: 6, null: false
    t.datetime "hora_fin", precision: 6, null: false
    t.decimal "premio_perde", precision: 15, scale: 2, null: false
    t.decimal "premio_ganad", precision: 15, scale: 2, null: false
    t.integer "id_tfa", precision: 38, null: false
    t.integer "id_sta", precision: 38, null: false
  end

  create_table "ar111_partido_doble", primary_key: "id_partido_doble", force: :cascade do |t|
    t.integer "j_gan_1", precision: 38, null: false
    t.integer "j_gan_2", precision: 38, null: false
    t.integer "j_per_1", precision: 38, null: false
    t.integer "j_per_2", precision: 38, null: false
    t.integer "id_par", precision: 38, null: false
  end

  create_table "ar111_partido_simple", primary_key: "id_partido_simple", force: :cascade do |t|
    t.integer "j_gan", precision: 38, null: false
    t.integer "j_per", precision: 38, null: false
    t.integer "id_part", precision: 38, null: false
  end

  create_table "ar111_persona", primary_key: "id_persona", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.string "apellido_paterno", limit: 50, null: false
    t.string "apellido_materno", limit: 50, null: false
    t.string "fono", limit: 20, null: false
    t.string "pasaporte", limit: 50, null: false
    t.integer "id_gen", precision: 38, null: false
  end

  create_table "ar111_stadium", primary_key: "id_stadium", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.string "superficie", limit: 50, null: false
    t.integer "capacidad", precision: 38, null: false
    t.integer "id_ciu", precision: 38, null: false
  end

  create_table "ar111_tipo_arbitro", primary_key: "id_tipo_arbitro", force: :cascade do |t|
    t.string "nombre", limit: 20, null: false
  end

  create_table "ar111_torneo", primary_key: "id_torneo", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.date "fecha_ini", null: false
    t.date "fecha_fin", null: false
    t.integer "id_pai", precision: 38, null: false
    t.integer "id_ges", precision: 38, null: false
  end

  create_table "ar111_torneo_fase", primary_key: "id_torneo_fase", force: :cascade do |t|
    t.integer "id_fas", precision: 38, null: false
    t.integer "id_tmo", precision: 38, null: false
  end

  create_table "ar111_torneo_modalidad", primary_key: "id_torneo_modalidad", force: :cascade do |t|
    t.integer "id_tor", precision: 38, null: false
    t.integer "id_mod", precision: 38, null: false
  end

  create_table "ar111_usuario", primary_key: "id_usuario", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.string "password", limit: 50, null: false
  end

  create_table "arbitro", primary_key: "personas_num_sec_persona", force: :cascade do |t|
  end

  create_table "arbitros", primary_key: "idarbitro", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.string "telefono", limit: 45
    t.string "email", limit: 45
    t.integer "idnacionalidad", limit: 11, precision: 11
  end

  create_table "cancha", primary_key: "num_sec_cancha", force: :cascade do |t|
    t.string "nombre", limit: 20
    t.integer "capacidad", precision: 38, null: false
    t.integer "pais_num_sec_pais", precision: 38, null: false
  end

  create_table "cancha69", primary_key: "idcancha", force: :cascade do |t|
    t.string "numero", limit: 45
  end

  create_table "categoria", primary_key: "num_sec_cat", force: :cascade do |t|
    t.string "nombre", limit: 15, null: false
    t.string "genero", limit: 15, null: false
  end

  create_table "entrenador", primary_key: "identrenador", force: :cascade do |t|
    t.string "nomombree", limit: 45, null: false
    t.string "apellidoe", limit: 45, null: false
  end

  create_table "entrenador69", primary_key: "identrenador", force: :cascade do |t|
    t.string "nombre", limit: 45
  end

  create_table "entrenadores", primary_key: "identrenadores", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.integer "edad", limit: 11, precision: 11
    t.integer "idnacionalidad", limit: 11, precision: 11
  end

  create_table "equipo", primary_key: "num_sec_equipo", force: :cascade do |t|
    t.integer "cancha_num_sec_cancha", precision: 38, null: false
    t.integer "num_sec_persona_1", precision: 38, null: false
    t.integer "num_sec_persona_2", precision: 38, null: false
    t.date "fecha", null: false
    t.integer "num_sec_cat", precision: 38, null: false
  end

  create_table "fase", primary_key: "num_sec_fase", force: :cascade do |t|
    t.string "nombre", limit: 15, null: false
  end

  create_table "ganacias", primary_key: "num_sec_ganacia", force: :cascade do |t|
    t.float "monto", limit: 3, null: false
    t.date "fecha", null: false
    t.integer "num_sec_persona", precision: 38, null: false
  end

  create_table "grandslam", primary_key: "idgrandslam", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.integer "anio", limit: 11, precision: 11
  end

# Could not dump table "htmldb_plan_table" because of following StandardError
#   Unknown type 'LONG' for column 'other'

  create_table "jugador69", primary_key: "idjugador", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.datetime "nacimiento", precision: 0
    t.integer "identrenador", limit: 10, precision: 10, null: false
    t.integer "idnacionalidad", limit: 10, precision: 10, null: false
    t.index ["identrenador"], name: "fk_jugador_entrenador1_idx"
    t.index ["idnacionalidad"], name: "fk_jugador_nacionalidad1_idx"
  end

  create_table "jugadores", primary_key: "personas_num_sec_persona", force: :cascade do |t|
    t.float "estatura", limit: 3, null: false
    t.float "peso", limit: 3, null: false
  end

  create_table "locaciones", primary_key: "idlocaciones", force: :cascade do |t|
    t.string "locacion", limit: 45
    t.integer "idpais", limit: 11, precision: 11
  end

  create_table "modalidad", primary_key: "id_m", id: :string, limit: 7, force: :cascade do |t|
    t.string "modalidad", limit: 25
  end

  create_table "modalidades", primary_key: "idmodalidades", force: :cascade do |t|
    t.string "modalidad", limit: 45
  end

  create_table "nacionalidad", primary_key: "idnacionalidad", force: :cascade do |t|
    t.string "nacionalidad", limit: 45
  end

  create_table "nacionalidad69", primary_key: "idnacionalidad", force: :cascade do |t|
    t.string "nacionalidad", limit: 45
  end

  create_table "ns_anio", primary_key: "id_a", id: :string, limit: 7, force: :cascade do |t|
    t.integer "anio", limit: 7, precision: 7
  end

  create_table "ns_anio_torneo", primary_key: "id_a_t", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_a", limit: 7
    t.string "id_t1", limit: 7
    t.string "id_t2", limit: 7
    t.string "id_t3", limit: 7
    t.string "id_t4", limit: 7
  end

  create_table "ns_arbitro", primary_key: "id_ar", id: :string, limit: 7, force: :cascade do |t|
    t.string "nombre", limit: 25
    t.string "apellido", limit: 25
    t.integer "edad", limit: 7, precision: 7
  end

  create_table "ns_entrenador", primary_key: "id_ent", id: :string, limit: 7, force: :cascade do |t|
    t.string "nombre", limit: 25
    t.string "apellido", limit: 25
    t.integer "edad", limit: 7, precision: 7
    t.string "id_n", limit: 7
  end

  create_table "ns_equipo", primary_key: "id_eq", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_m", limit: 7
    t.string "id_j1", limit: 7
    t.string "id_j2", limit: 7
    t.string "id_ent", limit: 7
  end

  create_table "ns_fase", primary_key: "id_f", id: :string, limit: 7, force: :cascade do |t|
    t.string "fase", limit: 25
    t.integer "premio_ganador", limit: 25, precision: 25
    t.integer "premio_consuelo", limit: 25, precision: 25
  end

  create_table "ns_jugador", primary_key: "id_j", id: :string, limit: 7, force: :cascade do |t|
    t.string "nombre", limit: 25
    t.string "apellido", limit: 25
    t.integer "edad", limit: 7, precision: 7
    t.string "sexo", limit: 25
    t.integer "peso_kg", limit: 7, precision: 7
    t.integer "altura_m", limit: 7, precision: 7
    t.string "id_ent", limit: 7
    t.integer "ganancia_total_dolares", limit: 7, precision: 7
  end

  create_table "ns_jugador_nacionalidad", primary_key: "id_j_n", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_j", limit: 7
    t.string "id_n", limit: 7
  end

  create_table "ns_jugador_torneo", primary_key: "id_j_t", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_j", limit: 7
    t.string "id_t", limit: 7
    t.integer "ganancia_dolares", limit: 25, precision: 25
  end

  create_table "ns_lugar", primary_key: "id_l", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_t", limit: 7
    t.string "nombre", limit: 30
    t.integer "capacidad", limit: 25, precision: 25
  end

  create_table "ns_modalidad", primary_key: "id_m", id: :string, limit: 7, force: :cascade do |t|
    t.string "modalidad", limit: 25
  end

  create_table "ns_nacionalidad", primary_key: "id_n", id: :string, limit: 7, force: :cascade do |t|
    t.string "nacionalidad", limit: 25
  end

  create_table "ns_partido_d", primary_key: "id_pd", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_t", limit: 7
    t.string "id_l", limit: 7
    t.string "id_m", limit: 7
    t.string "id_f", limit: 7
    t.string "id_eq1", limit: 7
    t.string "id_eq2", limit: 7
    t.string "id_ganador", limit: 7
  end

  create_table "ns_partido_i", primary_key: "id_pi", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_t", limit: 7
    t.string "id_l", limit: 7
    t.string "id_m", limit: 7
    t.string "id_f", limit: 7
    t.string "id_j1", limit: 7
    t.string "id_j2", limit: 7
    t.string "id_ganador", limit: 7
  end

  create_table "ns_partidod_abitro", primary_key: "id_pd_ar", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_pd", limit: 7
    t.string "id_ar1", limit: 7
    t.string "id_ar2", limit: 7
    t.string "id_ar3", limit: 7
    t.string "id_ar4", limit: 7
    t.string "id_ar5", limit: 7
    t.string "id_ar6", limit: 7
  end

  create_table "ns_partidoi_abitro", primary_key: "id_pi_ar", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_pi", limit: 7
    t.string "id_ar1", limit: 7
    t.string "id_ar2", limit: 7
    t.string "id_ar3", limit: 7
    t.string "id_ar4", limit: 7
    t.string "id_ar5", limit: 7
    t.string "id_ar6", limit: 7
  end

  create_table "ns_torneo", primary_key: "id_t", id: :string, limit: 7, force: :cascade do |t|
    t.string "nombre", limit: 30
    t.string "pais", limit: 25
    t.date "fecha_incio"
    t.date "fecha_fin"
    t.integer "anio", limit: 7, precision: 7
    t.integer "premio_dolares", limit: 25, precision: 25
  end

  create_table "ns_torneo_fase", primary_key: "id_t_f", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_t", limit: 7
    t.string "id_f1", limit: 7
    t.string "id_f2", limit: 7
    t.string "id_f3", limit: 7
    t.string "id_f4", limit: 7
    t.string "id_f5", limit: 7
    t.string "id_f6", limit: 7
  end

  create_table "ns_torneo_modalidad", primary_key: "id_t_m", id: :string, limit: 7, force: :cascade do |t|
    t.string "id_t", limit: 7
    t.string "id_m1", limit: 7
    t.string "id_m2", limit: 7
    t.string "id_m3", limit: 7
    t.string "id_m4", limit: 7
    t.string "id_m5", limit: 7
  end

  create_table "ns_usuario", primary_key: "id_u", id: :string, limit: 7, force: :cascade do |t|
    t.string "nombre", limit: 25
    t.string "password", limit: 25
  end

  create_table "nuevo", id: false, force: :cascade do |t|
    t.string "nombre", limit: 30
    t.string "clave", limit: 10
  end

  create_table "nuevo_uno", primary_key: "codigo_nuevo", id: :decimal, force: :cascade do |t|
    t.string "nombre_nuevo", limit: 100
  end

  create_table "pais", primary_key: "num_sec_pais", force: :cascade do |t|
    t.string "nombre", limit: 20, null: false
  end

  create_table "participantes", primary_key: "idparticipantes", force: :cascade do |t|
    t.string "nombre", limit: 45
    t.integer "edad", limit: 11, precision: 11
    t.string "genero", limit: 45
    t.integer "nacionalidad_idnacionalidad", limit: 11, precision: 11
  end

  create_table "participantes_has_entrenadores", id: false, force: :cascade do |t|
    t.integer "idparticipante", limit: 11, precision: 11
    t.integer "identrenadores", limit: 11, precision: 11
  end

  create_table "partido", primary_key: "idpartido", force: :cascade do |t|
    t.integer "idlocaciones", limit: 11, precision: 11
    t.integer "idparticipantes1", limit: 11, precision: 11
    t.integer "idparticipantes2", limit: 11, precision: 11
    t.integer "idarbitros", limit: 11, precision: 11
    t.integer "idmodalidades", limit: 11, precision: 11
    t.integer "idgrandslam", limit: 11, precision: 11
  end

  create_table "partido69", primary_key: "idpartido", force: :cascade do |t|
    t.datetime "fecha", precision: 0
    t.integer "idjugador1", limit: 10, precision: 10, null: false
    t.integer "idjugador2", limit: 10, precision: 10, null: false
    t.integer "idtorneo", limit: 10, precision: 10, null: false
    t.integer "idcancha", limit: 10, precision: 10, null: false
    t.index ["idcancha"], name: "fk_partido_cancha1_idx"
    t.index ["idjugador1"], name: "fk_partido_jugador1_idx"
    t.index ["idjugador2"], name: "fk_partido_jugador2_idx"
    t.index ["idtorneo"], name: "fk_partido_torneo1_idx"
  end

  create_table "per_pais", primary_key: "num_sec_per_pais", force: :cascade do |t|
    t.date "fecha", null: false
    t.integer "pais_num_sec_pais", precision: 38, null: false
    t.integer "personas_num_sec_persona", precision: 38, null: false
  end

  create_table "personas", primary_key: "num_sec_persona", force: :cascade do |t|
    t.string "nombre", limit: 25
    t.string "apellido", limit: 25
  end

  create_table "pmnationalities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pmplayers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "fechanacimiento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "premios", primary_key: "idpremios", force: :cascade do |t|
    t.string "cantidad", limit: 45
    t.string "categoria", limit: 45
    t.integer "idparticipante", limit: 11, precision: 11
    t.integer "idpartido", limit: 11, precision: 11
  end

  create_table "resultado_partido", primary_key: "num_sec_res_par", force: :cascade do |t|
    t.integer "e_ganador", precision: 38, null: false
    t.integer "e_perdedor", precision: 38, null: false
    t.integer "partido_num_sec_partido", precision: 38, null: false
  end

  create_table "resultado_set", primary_key: "num_sec_cat", force: :cascade do |t|
    t.string "nombre", limit: 15, null: false
    t.string "genero", limit: 15, null: false
    t.integer "partido_num_sec_partido", precision: 38, null: false
  end

  create_table "resultados", primary_key: "idresultados", force: :cascade do |t|
    t.string "resultado", limit: 45
    t.integer "idpartido", limit: 11, precision: 11
  end

  create_table "s_customer", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "phone", limit: 25
    t.string "address", limit: 400
    t.string "city", limit: 30
    t.string "state", limit: 20
    t.string "country", limit: 30
    t.string "zip_code", limit: 75
    t.string "credit_rating", limit: 9
    t.integer "sales_rep_id", limit: 7, precision: 7
    t.integer "region_id", limit: 7, precision: 7
    t.string "comments"
  end

  create_table "s_dept", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.integer "region_id", limit: 7, precision: 7
    t.index ["name", "region_id"], name: "s_dept_name_region_id_uk", unique: true
  end

  create_table "s_emp", force: :cascade do |t|
    t.string "last_name", limit: 25, null: false
    t.string "first_name", limit: 25
    t.string "userid", limit: 8
    t.date "start_date"
    t.string "comments"
    t.integer "manager_id", limit: 7, precision: 7
    t.string "title", limit: 25
    t.integer "dept_id", limit: 7, precision: 7
    t.decimal "salary", precision: 11, scale: 2
    t.decimal "commission_pct", precision: 4, scale: 2
    t.index ["userid"], name: "s_emp_userid_uk", unique: true
  end

  create_table "s_image", force: :cascade do |t|
    t.string "format", limit: 25
    t.string "use_filename", limit: 1
    t.string "filename"
    t.raw "image"
  end

  create_table "s_inventory", primary_key: ["product_id", "warehouse_id"], force: :cascade do |t|
    t.integer "product_id", limit: 7, precision: 7, null: false
    t.integer "warehouse_id", limit: 7, precision: 7, null: false
    t.integer "amount_in_stock", limit: 9, precision: 9
    t.integer "reorder_point", limit: 9, precision: 9
    t.integer "max_in_stock", limit: 9, precision: 9
    t.string "out_of_stock_explanation"
    t.date "restock_date"
  end

  create_table "s_item", primary_key: ["ord_id", "item_id"], force: :cascade do |t|
    t.integer "ord_id", limit: 7, precision: 7, null: false
    t.integer "item_id", limit: 7, precision: 7, null: false
    t.integer "product_id", limit: 7, precision: 7, null: false
    t.decimal "price", precision: 11, scale: 2
    t.integer "quantity", limit: 9, precision: 9
    t.integer "quantity_shipped", limit: 9, precision: 9
    t.index ["ord_id", "product_id"], name: "s_item_ordid_prodid_uk", unique: true
  end

  create_table "s_longtext", force: :cascade do |t|
    t.string "use_filename", limit: 1
    t.string "filename"
    t.string "text", limit: 2000
  end

  create_table "s_ord", force: :cascade do |t|
    t.integer "customer_id", limit: 7, precision: 7, null: false
    t.date "date_ordered"
    t.date "date_shipped"
    t.integer "sales_rep_id", limit: 7, precision: 7
    t.decimal "total", precision: 11, scale: 2
    t.string "payment_type", limit: 6
    t.string "order_filled", limit: 1
  end

  create_table "s_product", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.string "short_desc"
    t.integer "longtext_id", limit: 7, precision: 7
    t.integer "image_id", limit: 7, precision: 7
    t.decimal "suggested_whlsl_price", precision: 11, scale: 2
    t.string "whlsl_units", limit: 25
    t.index ["name"], name: "s_product_name_uk", unique: true
  end

  create_table "s_region", force: :cascade do |t|
    t.string "name", limit: 50, null: false
    t.index ["name"], name: "s_region_name_uk", unique: true
  end

  create_table "s_title", primary_key: "title", id: :string, limit: 25, force: :cascade do |t|
  end

# Could not dump table "s_warehouse" because of following StandardError
#   Unknown type 'LONG' for column 'address'

  create_table "set69", primary_key: "idset", force: :cascade do |t|
    t.integer "puntos1", limit: 10, precision: 10
    t.integer "puntos2", limit: 10, precision: 10
    t.integer "idpartido", limit: 10, precision: 10, null: false
    t.index ["idpartido"], name: "fk_set_partido1_idx"
  end

  create_table "t_arbitro", primary_key: "id_arbitro", force: :cascade do |t|
    t.string "nom_arbitro", limit: 45, null: false
    t.string "ap_arbitro", limit: 45, null: false
  end

  create_table "t_entrenador", primary_key: "id_entrenador", force: :cascade do |t|
    t.string "nom_entrenador", limit: 45, null: false
    t.string "ap_entrenador", limit: 45, null: false
  end

  create_table "t_equipo", primary_key: "id_equipo", force: :cascade do |t|
    t.string "modalidad", limit: 45, null: false
  end

  create_table "t_fase", primary_key: "id_fase", force: :cascade do |t|
    t.string "nom_fase", limit: 45, null: false
    t.decimal "premio_ganador", precision: 10, scale: 2, null: false
    t.decimal "premio_consuelo", precision: 10, scale: 2, null: false
  end

  create_table "t_genero", primary_key: "id_genero", force: :cascade do |t|
    t.string "nom_genero", limit: 45, null: false
  end

  create_table "t_jugador", primary_key: "id_jugador", force: :cascade do |t|
    t.integer "id_equipo", limit: 11, precision: 11, null: false
    t.integer "id_entrenador", limit: 11, precision: 11, null: false
    t.string "nom_j", limit: 45, null: false
    t.string "ap_j", limit: 45, null: false
    t.string "genero", limit: 10, null: false
    t.decimal "ganancia", precision: 10, scale: 2, null: false
  end

  create_table "t_jugador_partido", primary_key: "id_jp", force: :cascade do |t|
    t.integer "id_partido", limit: 11, precision: 11, null: false
    t.integer "sets_j1", limit: 11, precision: 11, null: false
    t.integer "sets_j2", limit: 11, precision: 11, null: false
    t.integer "t_equipo_id_equipo", limit: 11, precision: 11, null: false
    t.integer "t_equipo_2_id_equipo", limit: 11, precision: 11, null: false
    t.string "sets", limit: 45
  end

  create_table "t_modalidad", primary_key: "id_modalidad", force: :cascade do |t|
    t.string "nom_modalidad", limit: 45, null: false
  end

  create_table "t_partido", primary_key: "id_partido", force: :cascade do |t|
    t.integer "id_fase", limit: 11, precision: 11, null: false
    t.integer "id_modalidad", limit: 11, precision: 11, null: false
    t.integer "id_arbitro", limit: 11, precision: 11, null: false
    t.integer "id_genero", limit: 11, precision: 11, null: false
    t.integer "id_lugar", limit: 11, precision: 11, null: false
    t.date "fecha", null: false
  end

  create_table "t_torneo", primary_key: "id_torneo", force: :cascade do |t|
    t.string "nombre", limit: 45, null: false
    t.string "pais", limit: 45, null: false
    t.integer "gestion", limit: 11, precision: 11, null: false
  end

  create_table "tipo_nacionalidad", primary_key: "id_tipo_nacionalidad", force: :cascade do |t|
    t.integer "id_jugador", limit: 11, precision: 11, null: false
    t.string "tipo_nacionalidad", limit: 45, null: false
  end

  create_table "tipotorneo69", primary_key: "idtipotorneo", force: :cascade do |t|
    t.string "nombre", limit: 45
  end

  create_table "torneo", primary_key: "num_sec_torneo", force: :cascade do |t|
    t.date "fecha", null: false
    t.integer "pais_num_sec_pais", precision: 38, null: false
  end

  create_table "torneo69", primary_key: "idtorneo", force: :cascade do |t|
    t.string "year", limit: 45
    t.integer "idtipotorneo", limit: 10, precision: 10, null: false
    t.index ["idtipotorneo"], name: "fk_torneo_tipotorneo_idx"
  end

  create_table "torneo_fase", primary_key: "num_sec_torneo_fase", force: :cascade do |t|
    t.integer "torneo_num_sec_torneo", precision: 38, null: false
    t.integer "fase_num_sec_fase", precision: 38, null: false
    t.float "premio", limit: 3, null: false
  end

  create_table "usuarios", primary_key: "num_sec_usuario", force: :cascade do |t|
    t.string "usuario", limit: 15
    t.string "contrasena", limit: 15
    t.date "fecha_registro"
    t.integer "personas_num_sec_persona", precision: 38, null: false
  end

  add_foreign_key "ar111_arbitro", "ar111_nacionalidad", column: "id_nacio", primary_key: "id_nacionalidad", name: "id_nacionalidad"
  add_foreign_key "ar111_arbitro", "ar111_persona", column: "id_perso", primary_key: "id_persona", name: "arbitro_persona"
  add_foreign_key "ar111_arbitro_partido", "ar111_arbitro", column: "id_arb", primary_key: "id_arbitro", name: "arbitro_partido_arbitro"
  add_foreign_key "ar111_arbitro_partido", "ar111_partido", column: "id_parti", primary_key: "id_partido", name: "arbitro_partido_partido"
  add_foreign_key "ar111_arbitro_partido", "ar111_tipo_arbitro", column: "id_tar", primary_key: "id_tipo_arbitro", name: "arbitro_partido_tipo_arbitro"
  add_foreign_key "ar111_ciudad", "ar111_pais", column: "id_pais", primary_key: "id_pais", name: "Ciudad_Pais"
  add_foreign_key "ar111_entrenador", "ar111_nacionalidad", column: "id_naci", primary_key: "id_nacionalidad", name: "entrenador_nacionalidad"
  add_foreign_key "ar111_entrenador", "ar111_persona", column: "id_per", primary_key: "id_persona", name: "entrenador_persona"
  add_foreign_key "ar111_jugador", "ar111_persona", column: "id_pers", primary_key: "id_persona", name: "jugador_persona"
  add_foreign_key "ar111_jugador_torneo", "ar111_entrenador", column: "id_ent", primary_key: "id_entrenador", name: "jugador_torneo_entrenador"
  add_foreign_key "ar111_jugador_torneo", "ar111_jugador", column: "id_jug", primary_key: "id_jugador", name: "jugador_torneo_jugador"
  add_foreign_key "ar111_jugador_torneo", "ar111_nacionalidad", column: "id_nac", primary_key: "id_nacionalidad", name: "jugador_torneo_nacionalidad"
  add_foreign_key "ar111_jugador_torneo", "ar111_torneo", column: "id_tor", primary_key: "id_torneo", name: "jugador_torneo_torneo"
  add_foreign_key "ar111_nacionalidad", "ar111_pais", column: "id_pais", primary_key: "id_pais", name: "nacionalidad_pais"
  add_foreign_key "ar111_partido", "ar111_stadium", column: "id_sta", primary_key: "id_stadium", name: "partido_stadium"
  add_foreign_key "ar111_partido", "ar111_torneo_fase", column: "id_tfa", primary_key: "id_torneo_fase", name: "partido_torneo_fase"
  add_foreign_key "ar111_partido_doble", "ar111_jugador_torneo", column: "j_gan_1", primary_key: "id_jugador_torneo", name: "ganador_1"
  add_foreign_key "ar111_partido_doble", "ar111_jugador_torneo", column: "j_gan_2", primary_key: "id_jugador_torneo", name: "ganador_2"
  add_foreign_key "ar111_partido_doble", "ar111_jugador_torneo", column: "j_per_1", primary_key: "id_jugador_torneo", name: "perdedor_1"
  add_foreign_key "ar111_partido_doble", "ar111_jugador_torneo", column: "j_per_2", primary_key: "id_jugador_torneo", name: "perdedor_2"
  add_foreign_key "ar111_partido_doble", "ar111_partido", column: "id_par", primary_key: "id_partido", name: "partido_simple_partido"
  add_foreign_key "ar111_partido_simple", "ar111_jugador_torneo", column: "j_gan", primary_key: "id_jugador_torneo", name: "jugador_ganador"
  add_foreign_key "ar111_partido_simple", "ar111_jugador_torneo", column: "j_per", primary_key: "id_jugador_torneo", name: "jugador_perdedor"
  add_foreign_key "ar111_partido_simple", "ar111_partido", column: "id_part", primary_key: "id_partido", name: "partido_doble_partido"
  add_foreign_key "ar111_persona", "ar111_genero", column: "id_gen", name: "ar111_persona_Genero"
  add_foreign_key "ar111_stadium", "ar111_ciudad", column: "id_ciu", primary_key: "id_ciudad", name: "stadium_ciudad"
  add_foreign_key "ar111_torneo", "ar111_gestion", column: "id_ges", primary_key: "id_gestion", name: "ar111_torneo_gestion"
  add_foreign_key "ar111_torneo", "ar111_pais", column: "id_pai", primary_key: "id_pais", name: "torneo_pais"
  add_foreign_key "ar111_torneo_fase", "ar111_fase", column: "id_fas", primary_key: "id_fase", name: "torneo_fase_fase"
  add_foreign_key "ar111_torneo_fase", "ar111_torneo_modalidad", column: "id_tmo", primary_key: "id_torneo_modalidad", name: "id_torneo_modalidad"
  add_foreign_key "ar111_torneo_modalidad", "ar111_modalidad", column: "id_mod", primary_key: "id_modalidad", name: "torneo_modalidad_modalidad"
  add_foreign_key "ar111_torneo_modalidad", "ar111_torneo", column: "id_tor", primary_key: "id_torneo", name: "torneo_modalidad_torneo"
  add_foreign_key "arbitro", "personas", column: "personas_num_sec_persona", primary_key: "num_sec_persona", name: "arbitro_personas"
  add_foreign_key "arbitros", "nacionalidad", column: "idnacionalidad", primary_key: "idnacionalidad", name: "arbitros_fk", on_delete: :cascade
  add_foreign_key "cancha", "pais", column: "pais_num_sec_pais", primary_key: "num_sec_pais", name: "cancha_pais"
  add_foreign_key "equipo", "cancha", column: "cancha_num_sec_cancha", primary_key: "num_sec_cancha", name: "equipo_cancha"
  add_foreign_key "equipo", "categoria", column: "num_sec_cat", primary_key: "num_sec_cat", name: "equipo_categoria"
  add_foreign_key "jugador69", "entrenador69", column: "identrenador", primary_key: "identrenador", name: "fk_jugador_entrenador1"
  add_foreign_key "jugador69", "nacionalidad69", column: "idnacionalidad", primary_key: "idnacionalidad", name: "fk_jugador_nacionalidad1"
  add_foreign_key "jugadores", "personas", column: "personas_num_sec_persona", primary_key: "num_sec_persona", name: "jugadores_personas"
  add_foreign_key "ns_anio_torneo", "ns_anio", column: "id_a", primary_key: "id_a", name: "sys_c0022625"
  add_foreign_key "ns_anio_torneo", "ns_torneo", column: "id_t1", primary_key: "id_t", name: "sys_c0022626"
  add_foreign_key "ns_anio_torneo", "ns_torneo", column: "id_t2", primary_key: "id_t", name: "sys_c0022627"
  add_foreign_key "ns_anio_torneo", "ns_torneo", column: "id_t3", primary_key: "id_t", name: "sys_c0022628"
  add_foreign_key "ns_anio_torneo", "ns_torneo", column: "id_t4", primary_key: "id_t", name: "sys_c0022629"
  add_foreign_key "ns_entrenador", "ns_nacionalidad", column: "id_n", primary_key: "id_n", name: "sys_c0022621"
  add_foreign_key "ns_equipo", "ns_entrenador", column: "id_ent", primary_key: "id_ent", name: "sys_c0022659"
  add_foreign_key "ns_equipo", "ns_jugador", column: "id_j1", primary_key: "id_j", name: "sys_c0022656"
  add_foreign_key "ns_equipo", "ns_jugador", column: "id_j2", primary_key: "id_j", name: "sys_c0022657"
  add_foreign_key "ns_equipo", "ns_modalidad", column: "id_m", primary_key: "id_m", name: "sys_c0022658"
  add_foreign_key "ns_jugador", "ns_entrenador", column: "id_ent", primary_key: "id_ent", name: "sys_c0022623"
  add_foreign_key "ns_jugador_nacionalidad", "ns_jugador", column: "id_j", primary_key: "id_j", name: "sys_c0022650"
  add_foreign_key "ns_jugador_nacionalidad", "ns_nacionalidad", column: "id_n", primary_key: "id_n", name: "sys_c0022651"
  add_foreign_key "ns_jugador_torneo", "ns_jugador", column: "id_j", primary_key: "id_j", name: "sys_c0022653"
  add_foreign_key "ns_jugador_torneo", "ns_torneo", column: "id_t", primary_key: "id_t", name: "sys_c0022654"
  add_foreign_key "ns_lugar", "ns_torneo", column: "id_t", primary_key: "id_t", name: "sys_c0022648"
  add_foreign_key "ns_partido_d", "ns_equipo", column: "id_eq1", primary_key: "id_eq", name: "sys_c0022673"
  add_foreign_key "ns_partido_d", "ns_equipo", column: "id_eq2", primary_key: "id_eq", name: "sys_c0022674"
  add_foreign_key "ns_partido_d", "ns_fase", column: "id_f", primary_key: "id_f", name: "sys_c0022672"
  add_foreign_key "ns_partido_d", "ns_lugar", column: "id_l", primary_key: "id_l", name: "sys_c0022670"
  add_foreign_key "ns_partido_d", "ns_modalidad", column: "id_m", primary_key: "id_m", name: "sys_c0022671"
  add_foreign_key "ns_partido_d", "ns_torneo", column: "id_t", primary_key: "id_t", name: "sys_c0022669"
  add_foreign_key "ns_partido_i", "ns_fase", column: "id_f", primary_key: "id_f", name: "sys_c0022665"
  add_foreign_key "ns_partido_i", "ns_jugador", column: "id_j1", primary_key: "id_j", name: "sys_c0022666"
  add_foreign_key "ns_partido_i", "ns_jugador", column: "id_j2", primary_key: "id_j", name: "sys_c0022667"
  add_foreign_key "ns_partido_i", "ns_lugar", column: "id_l", primary_key: "id_l", name: "sys_c0022663"
  add_foreign_key "ns_partido_i", "ns_modalidad", column: "id_m", primary_key: "id_m", name: "sys_c0022664"
  add_foreign_key "ns_partido_i", "ns_torneo", column: "id_t", primary_key: "id_t", name: "sys_c0022662"
  add_foreign_key "ns_partidod_abitro", "ns_arbitro", column: "id_ar1", primary_key: "id_ar", name: "sys_c0022685"
  add_foreign_key "ns_partidod_abitro", "ns_arbitro", column: "id_ar2", primary_key: "id_ar", name: "sys_c0022686"
  add_foreign_key "ns_partidod_abitro", "ns_arbitro", column: "id_ar3", primary_key: "id_ar", name: "sys_c0022687"
  add_foreign_key "ns_partidod_abitro", "ns_arbitro", column: "id_ar4", primary_key: "id_ar", name: "sys_c0022688"
  add_foreign_key "ns_partidod_abitro", "ns_arbitro", column: "id_ar5", primary_key: "id_ar", name: "sys_c0022689"
  add_foreign_key "ns_partidod_abitro", "ns_arbitro", column: "id_ar6", primary_key: "id_ar", name: "sys_c0022690"
  add_foreign_key "ns_partidod_abitro", "ns_partido_d", column: "id_pd", primary_key: "id_pd", name: "sys_c0022684"
  add_foreign_key "ns_partidoi_abitro", "ns_arbitro", column: "id_ar1", primary_key: "id_ar", name: "sys_c0022677"
  add_foreign_key "ns_partidoi_abitro", "ns_arbitro", column: "id_ar2", primary_key: "id_ar", name: "sys_c0022678"
  add_foreign_key "ns_partidoi_abitro", "ns_arbitro", column: "id_ar3", primary_key: "id_ar", name: "sys_c0022679"
  add_foreign_key "ns_partidoi_abitro", "ns_arbitro", column: "id_ar4", primary_key: "id_ar", name: "sys_c0022680"
  add_foreign_key "ns_partidoi_abitro", "ns_arbitro", column: "id_ar5", primary_key: "id_ar", name: "sys_c0022681"
  add_foreign_key "ns_partidoi_abitro", "ns_arbitro", column: "id_ar6", primary_key: "id_ar", name: "sys_c0022682"
  add_foreign_key "ns_partidoi_abitro", "ns_partido_i", column: "id_pi", primary_key: "id_pi", name: "sys_c0022676"
  add_foreign_key "ns_torneo_fase", "ns_fase", column: "id_f1", primary_key: "id_f", name: "sys_c0022641"
  add_foreign_key "ns_torneo_fase", "ns_fase", column: "id_f2", primary_key: "id_f", name: "sys_c0022642"
  add_foreign_key "ns_torneo_fase", "ns_fase", column: "id_f3", primary_key: "id_f", name: "sys_c0022643"
  add_foreign_key "ns_torneo_fase", "ns_fase", column: "id_f4", primary_key: "id_f", name: "sys_c0022644"
  add_foreign_key "ns_torneo_fase", "ns_fase", column: "id_f5", primary_key: "id_f", name: "sys_c0022645"
  add_foreign_key "ns_torneo_fase", "ns_fase", column: "id_f6", primary_key: "id_f", name: "sys_c0022646"
  add_foreign_key "ns_torneo_fase", "ns_torneo", column: "id_t", primary_key: "id_t", name: "sys_c0022640"
  add_foreign_key "ns_torneo_modalidad", "ns_modalidad", column: "id_m1", primary_key: "id_m", name: "sys_c0022633"
  add_foreign_key "ns_torneo_modalidad", "ns_modalidad", column: "id_m2", primary_key: "id_m", name: "sys_c0022634"
  add_foreign_key "ns_torneo_modalidad", "ns_modalidad", column: "id_m3", primary_key: "id_m", name: "sys_c0022635"
  add_foreign_key "ns_torneo_modalidad", "ns_modalidad", column: "id_m4", primary_key: "id_m", name: "sys_c0022636"
  add_foreign_key "ns_torneo_modalidad", "ns_modalidad", column: "id_m5", primary_key: "id_m", name: "sys_c0022637"
  add_foreign_key "ns_torneo_modalidad", "ns_torneo", column: "id_t", primary_key: "id_t", name: "sys_c0022632"
  add_foreign_key "participantes", "nacionalidad", column: "nacionalidad_idnacionalidad", primary_key: "idnacionalidad", name: "participantes_fk", on_delete: :cascade
  add_foreign_key "participantes_has_entrenadores", "entrenadores", column: "identrenadores", primary_key: "identrenadores", name: "entrenador_FK", on_delete: :cascade
  add_foreign_key "participantes_has_entrenadores", "participantes", column: "idparticipante", primary_key: "idparticipantes", name: "participante_FK", on_delete: :cascade
  add_foreign_key "partido", "arbitros", column: "idarbitros", primary_key: "idarbitro", name: "arbitro_fk", on_delete: :cascade
  add_foreign_key "partido", "grandslam", column: "idgrandslam", primary_key: "idgrandslam", name: "grandslam_fk", on_delete: :cascade
  add_foreign_key "partido", "locaciones", column: "idlocaciones", primary_key: "idlocaciones", name: "locacion_fk", on_delete: :cascade
  add_foreign_key "partido", "modalidades", column: "idmodalidades", primary_key: "idmodalidades", name: "modalidad_fk", on_delete: :cascade
  add_foreign_key "partido", "participantes", column: "idparticipantes1", primary_key: "idparticipantes", name: "participante1_fk", on_delete: :cascade
  add_foreign_key "partido", "participantes", column: "idparticipantes2", primary_key: "idparticipantes", name: "participante2_fk", on_delete: :cascade
  add_foreign_key "partido69", "cancha69", column: "idcancha", primary_key: "idcancha", name: "fk_partido_cancha1"
  add_foreign_key "partido69", "jugador69", column: "idjugador1", primary_key: "idjugador", name: "fk_partido_jugador1"
  add_foreign_key "partido69", "jugador69", column: "idjugador2", primary_key: "idjugador", name: "fk_partido_jugador2"
  add_foreign_key "partido69", "torneo69", column: "idtorneo", primary_key: "idtorneo", name: "fk_partido_torneo1"
  add_foreign_key "per_pais", "pais", column: "pais_num_sec_pais", primary_key: "num_sec_pais", name: "per_pais_pais"
  add_foreign_key "per_pais", "personas", column: "personas_num_sec_persona", primary_key: "num_sec_persona", name: "per_pais_personas"
  add_foreign_key "premios", "participantes", column: "idparticipante", primary_key: "idparticipantes", name: "participante_fk", on_delete: :cascade
  add_foreign_key "premios", "partido", column: "idpartido", primary_key: "idpartido", name: "partido_FK", on_delete: :cascade
  add_foreign_key "resultados", "partido", column: "idpartido", primary_key: "idpartido", name: "partido_fk", on_delete: :cascade
  add_foreign_key "s_customer", "s_emp", column: "sales_rep_id", name: "s_sales_rep_id_fk"
  add_foreign_key "s_customer", "s_region", column: "region_id", name: "s_customer_region_id_fk"
  add_foreign_key "s_dept", "s_region", column: "region_id", name: "s_dept_region_id_fk"
  add_foreign_key "s_emp", "s_dept", column: "dept_id", name: "s_emp_dept_id_fk"
  add_foreign_key "s_emp", "s_emp", column: "manager_id", name: "s_emp_manager_id_fk"
  add_foreign_key "s_emp", "s_title", column: "title", primary_key: "title", name: "s_emp_title_fk"
  add_foreign_key "s_inventory", "s_product", column: "product_id", name: "s_inventory_product_id_fk"
  add_foreign_key "s_inventory", "s_warehouse", column: "warehouse_id", name: "s_inventory_warehouse_id_fk"
  add_foreign_key "s_item", "s_ord", column: "ord_id", name: "s_item_ord_id_fk"
  add_foreign_key "s_item", "s_product", column: "product_id", name: "s_item_product_id_fk"
  add_foreign_key "s_ord", "s_customer", column: "customer_id", name: "s_ord_customer_id_fk"
  add_foreign_key "s_ord", "s_emp", column: "sales_rep_id", name: "s_ord_sales_rep_id_fk"
  add_foreign_key "s_product", "s_image", column: "image_id", name: "s_product_image_id_fk"
  add_foreign_key "s_product", "s_longtext", column: "longtext_id", name: "s_product_longtext_id_fk"
  add_foreign_key "s_warehouse", "s_emp", column: "manager_id", name: "s_warehouse_manager_id_fk"
  add_foreign_key "s_warehouse", "s_region", column: "region_id", name: "s_warehouse_region_id_fk"
  add_foreign_key "set69", "partido69", column: "idpartido", primary_key: "idpartido", name: "fk_set_partido1"
  add_foreign_key "t_jugador", "t_entrenador", column: "id_entrenador", primary_key: "id_entrenador", name: "t_jugador_t_entrenador"
  add_foreign_key "t_jugador", "t_equipo", column: "id_equipo", primary_key: "id_equipo", name: "t_jugador_t_equipo"
  add_foreign_key "t_jugador_partido", "t_equipo", column: "t_equipo_2_id_equipo", primary_key: "id_equipo", name: "id_equipo2"
  add_foreign_key "t_jugador_partido", "t_equipo", column: "t_equipo_id_equipo", primary_key: "id_equipo", name: "id_equipo1"
  add_foreign_key "t_jugador_partido", "t_partido", column: "id_partido", primary_key: "id_partido", name: "t_jugador_partido_t_partido"
  add_foreign_key "t_partido", "t_arbitro", column: "id_arbitro", primary_key: "id_arbitro", name: "t_partido_t_arbitro"
  add_foreign_key "t_partido", "t_fase", column: "id_fase", primary_key: "id_fase", name: "t_partido_t_fase"
  add_foreign_key "t_partido", "t_genero", column: "id_genero", primary_key: "id_genero", name: "t_partido_t_genero"
  add_foreign_key "t_partido", "t_modalidad", column: "id_modalidad", primary_key: "id_modalidad", name: "t_partido_t_modalidad"
  add_foreign_key "t_partido", "t_torneo", column: "id_lugar", primary_key: "id_torneo", name: "t_partido_t_torneo"
  add_foreign_key "tipo_nacionalidad", "t_jugador", column: "id_jugador", primary_key: "id_jugador", name: "tipo_nacionalidad_t_jugador"
  add_foreign_key "torneo", "pais", column: "pais_num_sec_pais", primary_key: "num_sec_pais", name: "torneo_pais"
  add_foreign_key "torneo69", "tipotorneo69", column: "idtipotorneo", primary_key: "idtipotorneo", name: "fk_torneo_tipotorneo"
  add_foreign_key "torneo_fase", "fase", column: "fase_num_sec_fase", primary_key: "num_sec_fase", name: "torneo_fase_fase"
  add_foreign_key "torneo_fase", "torneo", column: "torneo_num_sec_torneo", primary_key: "num_sec_torneo", name: "torneo_fase_torneo"
  add_foreign_key "usuarios", "personas", column: "personas_num_sec_persona", primary_key: "num_sec_persona", name: "usuarios_personas"
end
