class AddPmmatchToPmsets < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmsets, :pmmatch, foreign_key: true
  end
end
