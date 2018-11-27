require 'test_helper'

class PmprizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmprize = pmprizes(:one)
  end

  test "should get index" do
    get pmprizes_url
    assert_response :success
  end

  test "should get new" do
    get new_pmprize_url
    assert_response :success
  end

  test "should create pmprize" do
    assert_difference('Pmprize.count') do
      post pmprizes_url, params: { pmprize: { amount: @pmprize.amount, name: @pmprize.name } }
    end

    assert_redirected_to pmprize_url(Pmprize.last)
  end

  test "should show pmprize" do
    get pmprize_url(@pmprize)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmprize_url(@pmprize)
    assert_response :success
  end

  test "should update pmprize" do
    patch pmprize_url(@pmprize), params: { pmprize: { amount: @pmprize.amount, name: @pmprize.name } }
    assert_redirected_to pmprize_url(@pmprize)
  end

  test "should destroy pmprize" do
    assert_difference('Pmprize.count', -1) do
      delete pmprize_url(@pmprize)
    end

    assert_redirected_to pmprizes_url
  end
end
