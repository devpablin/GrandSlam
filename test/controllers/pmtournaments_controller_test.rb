require 'test_helper'

class PmtournamentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmtournament = pmtournaments(:one)
  end

  test "should get index" do
    get pmtournaments_url
    assert_response :success
  end

  test "should get new" do
    get new_pmtournament_url
    assert_response :success
  end

  test "should create pmtournament" do
    assert_difference('Pmtournament.count') do
      post pmtournaments_url, params: { pmtournament: { end_date: @pmtournament.end_date, init_date: @pmtournament.init_date, name: @pmtournament.name, pmplace_id_id: @pmtournament.pmplace_id_id, year: @pmtournament.year } }
    end

    assert_redirected_to pmtournament_url(Pmtournament.last)
  end

  test "should show pmtournament" do
    get pmtournament_url(@pmtournament)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmtournament_url(@pmtournament)
    assert_response :success
  end

  test "should update pmtournament" do
    patch pmtournament_url(@pmtournament), params: { pmtournament: { end_date: @pmtournament.end_date, init_date: @pmtournament.init_date, name: @pmtournament.name, pmplace_id_id: @pmtournament.pmplace_id_id, year: @pmtournament.year } }
    assert_redirected_to pmtournament_url(@pmtournament)
  end

  test "should destroy pmtournament" do
    assert_difference('Pmtournament.count', -1) do
      delete pmtournament_url(@pmtournament)
    end

    assert_redirected_to pmtournaments_url
  end
end
