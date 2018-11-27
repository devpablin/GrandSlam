class AddPmcourtToPmmatches < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmmatches, :pmcourt, foreign_key: true
  end
end
