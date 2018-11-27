require 'test_helper'

class PmcountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmcountry = pmcountries(:one)
  end

  test "should get index" do
    get pmcountries_url
    assert_response :success
  end

  test "should get new" do
    get new_pmcountry_url
    assert_response :success
  end

  test "should create pmcountry" do
    assert_difference('Pmcountry.count') do
      post pmcountries_url, params: { pmcountry: { name: @pmcountry.name } }
    end

    assert_redirected_to pmcountry_url(Pmcountry.last)
  end

  test "should show pmcountry" do
    get pmcountry_url(@pmcountry)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmcountry_url(@pmcountry)
    assert_response :success
  end

  test "should update pmcountry" do
    patch pmcountry_url(@pmcountry), params: { pmcountry: { name: @pmcountry.name } }
    assert_redirected_to pmcountry_url(@pmcountry)
  end

  test "should destroy pmcountry" do
    assert_difference('Pmcountry.count', -1) do
      delete pmcountry_url(@pmcountry)
    end

    assert_redirected_to pmcountries_url
  end
end
