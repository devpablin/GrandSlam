class AddPmroundToPmmatches < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmmatches, :pmround, foreign_key: true
  end
end
