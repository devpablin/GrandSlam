require 'test_helper'

class PmsetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmset = pmsets(:one)
  end

  test "should get index" do
    get pmsets_url
    assert_response :success
  end

  test "should get new" do
    get new_pmset_url
    assert_response :success
  end

  test "should create pmset" do
    assert_difference('Pmset.count') do
      post pmsets_url, params: { pmset: { local_points: @pmset.local_points, visitor_points: @pmset.visitor_points } }
    end

    assert_redirected_to pmset_url(Pmset.last)
  end

  test "should show pmset" do
    get pmset_url(@pmset)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmset_url(@pmset)
    assert_response :success
  end

  test "should update pmset" do
    patch pmset_url(@pmset), params: { pmset: { local_points: @pmset.local_points, visitor_points: @pmset.visitor_points } }
    assert_redirected_to pmset_url(@pmset)
  end

  test "should destroy pmset" do
    assert_difference('Pmset.count', -1) do
      delete pmset_url(@pmset)
    end

    assert_redirected_to pmsets_url
  end
end
