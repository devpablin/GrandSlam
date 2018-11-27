class CreatePmtournaments < ActiveRecord::Migration[5.1]
  def change
    create_table :pmtournaments do |t|
      t.string :name
      t.date :year
      t.date :init_date
      t.date :end_date

      t.timestamps
    end
  end
end
