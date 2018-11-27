class AddPmcountryToPmplaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmplaces, :pmcountry, foreign_key: true
  end
end
