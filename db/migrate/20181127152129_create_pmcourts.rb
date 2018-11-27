class CreatePmcourts < ActiveRecord::Migration[5.1]
  def change
    create_table :pmcourts do |t|
      t.string :number

      t.timestamps
    end
  end
end
