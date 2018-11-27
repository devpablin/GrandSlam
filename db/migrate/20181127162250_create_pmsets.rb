class CreatePmsets < ActiveRecord::Migration[5.1]
  def change
    create_table :pmsets do |t|
      t.integer :local_points
      t.integer :visitor_points

      t.timestamps
    end
  end
end
