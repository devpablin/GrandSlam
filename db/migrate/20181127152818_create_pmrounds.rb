class CreatePmrounds < ActiveRecord::Migration[5.1]
  def change
    create_table :pmrounds do |t|
      t.string :round

      t.timestamps
    end
  end
end
