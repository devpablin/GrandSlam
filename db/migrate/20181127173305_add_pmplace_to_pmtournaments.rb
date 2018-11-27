class AddPmplaceToPmtournaments < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmtournaments, :pmplace, foreign_key: true
  end
end
