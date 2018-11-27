class AddPmplaceToPmcourts < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmcourts, :pmplace, foreign_key: true
  end
end
