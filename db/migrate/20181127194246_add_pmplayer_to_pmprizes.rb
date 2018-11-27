class AddPmplayerToPmprizes < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmprizes, :pmplayer, foreign_key: true
  end
end
