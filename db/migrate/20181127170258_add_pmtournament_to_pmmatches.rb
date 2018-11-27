class AddPmtournamentToPmmatches < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmmatches, :pmtournament, foreign_key: true
  end
end
