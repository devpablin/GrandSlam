class CreatePmprizes < ActiveRecord::Migration[5.1]
  def change
    create_table :pmprizes do |t|
      t.float :amount
      t.string :name

      t.timestamps
    end
  end
end
