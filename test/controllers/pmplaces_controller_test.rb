require 'test_helper'

class PmplacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmplace = pmplaces(:one)
  end

  test "should get index" do
    get pmplaces_url
    assert_response :success
  end

  test "should get new" do
    get new_pmplace_url
    assert_response :success
  end

  test "should create pmplace" do
    assert_difference('Pmplace.count') do
      post pmplaces_url, params: { pmplace: { name: @pmplace.name, pmcountry_id_id: @pmplace.pmcountry_id_id } }
    end

    assert_redirected_to pmplace_url(Pmplace.last)
  end

  test "should show pmplace" do
    get pmplace_url(@pmplace)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmplace_url(@pmplace)
    assert_response :success
  end

  test "should update pmplace" do
    patch pmplace_url(@pmplace), params: { pmplace: { name: @pmplace.name, pmcountry_id_id: @pmplace.pmcountry_id_id } }
    assert_redirected_to pmplace_url(@pmplace)
  end

  test "should destroy pmplace" do
    assert_difference('Pmplace.count', -1) do
      delete pmplace_url(@pmplace)
    end

    assert_redirected_to pmplaces_url
  end
end
