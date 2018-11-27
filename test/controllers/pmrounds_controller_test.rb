require 'test_helper'

class PmroundsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmround = pmrounds(:one)
  end

  test "should get index" do
    get pmrounds_url
    assert_response :success
  end

  test "should get new" do
    get new_pmround_url
    assert_response :success
  end

  test "should create pmround" do
    assert_difference('Pmround.count') do
      post pmrounds_url, params: { pmround: { round: @pmround.round } }
    end

    assert_redirected_to pmround_url(Pmround.last)
  end

  test "should show pmround" do
    get pmround_url(@pmround)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmround_url(@pmround)
    assert_response :success
  end

  test "should update pmround" do
    patch pmround_url(@pmround), params: { pmround: { round: @pmround.round } }
    assert_redirected_to pmround_url(@pmround)
  end

  test "should destroy pmround" do
    assert_difference('Pmround.count', -1) do
      delete pmround_url(@pmround)
    end

    assert_redirected_to pmrounds_url
  end
end
