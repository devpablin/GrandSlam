require 'test_helper'

class PmnationalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmnationality = pmnationalities(:one)
  end

  test "should get index" do
    get pmnationalities_url
    assert_response :success
  end

  test "should get new" do
    get new_pmnationality_url
    assert_response :success
  end

  test "should create pmnationality" do
    assert_difference('Pmnationality.count') do
      post pmnationalities_url, params: { pmnationality: { name: @pmnationality.name } }
    end

    assert_redirected_to pmnationality_url(Pmnationality.last)
  end

  test "should show pmnationality" do
    get pmnationality_url(@pmnationality)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmnationality_url(@pmnationality)
    assert_response :success
  end

  test "should update pmnationality" do
    patch pmnationality_url(@pmnationality), params: { pmnationality: { name: @pmnationality.name } }
    assert_redirected_to pmnationality_url(@pmnationality)
  end

  test "should destroy pmnationality" do
    assert_difference('Pmnationality.count', -1) do
      delete pmnationality_url(@pmnationality)
    end

    assert_redirected_to pmnationalities_url
  end
end
