require 'test_helper'

class PmcourtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmcourt = pmcourts(:one)
  end

  test "should get index" do
    get pmcourts_url
    assert_response :success
  end

  test "should get new" do
    get new_pmcourt_url
    assert_response :success
  end

  test "should create pmcourt" do
    assert_difference('Pmcourt.count') do
      post pmcourts_url, params: { pmcourt: { number: @pmcourt.number } }
    end

    assert_redirected_to pmcourt_url(Pmcourt.last)
  end

  test "should show pmcourt" do
    get pmcourt_url(@pmcourt)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmcourt_url(@pmcourt)
    assert_response :success
  end

  test "should update pmcourt" do
    patch pmcourt_url(@pmcourt), params: { pmcourt: { number: @pmcourt.number } }
    assert_redirected_to pmcourt_url(@pmcourt)
  end

  test "should destroy pmcourt" do
    assert_difference('Pmcourt.count', -1) do
      delete pmcourt_url(@pmcourt)
    end

    assert_redirected_to pmcourts_url
  end
end
