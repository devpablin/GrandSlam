class AddPmmatchToPmprizes < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmprizes, :pmmatch, foreign_key: true
  end
end
