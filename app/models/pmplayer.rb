class Pmplayer < ApplicationRecord
  has_many :local_matches, class_name: "Pmmatch", foreign_key: "pmplayer_1_id"
  has_many :visitor_matches, class_name: "Pmmatch", foreign_key: "pmplayer_2_id"
  has_many :pmprizes
end
