class Pmmatch < ApplicationRecord
  belongs_to :pmcourt
  belongs_to :pmround
  belongs_to :pmtournament
  belongs_to :pmplayer_1, class_name: "Pmplayer"
  belongs_to :pmplayer_2, class_name: "Pmplayer"
  belongs_to :pmreferee
  has_many :pmprizes
end
