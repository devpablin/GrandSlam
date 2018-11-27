class Pmplace < ApplicationRecord
  belongs_to :pmcountry
  has_many :pmcourts
  has_many :pmtournaments
end
