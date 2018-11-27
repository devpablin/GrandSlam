class CreatePmplaces < ActiveRecord::Migration[5.1]
  def change
    create_table :pmplaces do |t|
      t.string :name

      t.timestamps
    end
  end
end
