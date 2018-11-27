class AddPmplayer1ToPmmatches < ActiveRecord::Migration[5.1]
  def change
    add_column :pmmatches, :pmplayer_1_id, :integer
    add_column :pmmatches, :pmplayer_2_id, :integer
  end
end
