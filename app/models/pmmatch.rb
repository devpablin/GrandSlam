class Pmmatch < ApplicationRecord
  belongs_to :pmcourt_id
  belongs_to :pmround_id
  belongs_to :pmtournament_id
end
