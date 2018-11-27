class AddPmrefereeToPmmatches < ActiveRecord::Migration[5.1]
  def change
    add_reference :pmmatches, :pmreferee, foreign_key: true
  end
end
