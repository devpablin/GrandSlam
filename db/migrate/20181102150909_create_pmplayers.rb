class CreatePmplayers < ActiveRecord::Migration[5.1]
  def change
    create_table :pmplayers do |t|
      t.string :first_name
      t.string :last_name
      t.date :fechanacimiento

      t.timestamps
    end
  end
end
