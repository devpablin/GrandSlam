class CreatePmtrainers < ActiveRecord::Migration[5.1]
  def change
    create_table :pmtrainers do |t|
      t.string :nombre
      t.string :apellido

      t.timestamps
    end
  end
end
