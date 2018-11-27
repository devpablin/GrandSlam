require 'test_helper'

class PmmatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmmatch = pmmatches(:one)
  end

  test "should get index" do
    get pmmatches_url
    assert_response :success
  end

  test "should get new" do
    get new_pmmatch_url
    assert_response :success
  end

  test "should create pmmatch" do
    assert_difference('Pmmatch.count') do
      post pmmatches_url, params: { pmmatch: { date: @pmmatch.date, pmcourt_id_id: @pmmatch.pmcourt_id_id, pmround_id_id: @pmmatch.pmround_id_id, pmtournament_id_id: @pmmatch.pmtournament_id_id, score1: @pmmatch.score1, score2: @pmmatch.score2 } }
    end

    assert_redirected_to pmmatch_url(Pmmatch.last)
  end

  test "should show pmmatch" do
    get pmmatch_url(@pmmatch)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmmatch_url(@pmmatch)
    assert_response :success
  end

  test "should update pmmatch" do
    patch pmmatch_url(@pmmatch), params: { pmmatch: { date: @pmmatch.date, pmcourt_id_id: @pmmatch.pmcourt_id_id, pmround_id_id: @pmmatch.pmround_id_id, pmtournament_id_id: @pmmatch.pmtournament_id_id, score1: @pmmatch.score1, score2: @pmmatch.score2 } }
    assert_redirected_to pmmatch_url(@pmmatch)
  end

  test "should destroy pmmatch" do
    assert_difference('Pmmatch.count', -1) do
      delete pmmatch_url(@pmmatch)
    end

    assert_redirected_to pmmatches_url
  end
end
