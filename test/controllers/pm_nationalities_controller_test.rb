require 'test_helper'

class PmNationalitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pm_nationality = pm_nationalities(:one)
  end

  test "should get index" do
    get pm_nationalities_url
    assert_response :success
  end

  test "should get new" do
    get new_pm_nationality_url
    assert_response :success
  end

  test "should create pm_nationality" do
    assert_difference('PmNationality.count') do
      post pm_nationalities_url, params: { pm_nationality: { name: @pm_nationality.name } }
    end

    assert_redirected_to pm_nationality_url(PmNationality.last)
  end

  test "should show pm_nationality" do
    get pm_nationality_url(@pm_nationality)
    assert_response :success
  end

  test "should get edit" do
    get edit_pm_nationality_url(@pm_nationality)
    assert_response :success
  end

  test "should update pm_nationality" do
    patch pm_nationality_url(@pm_nationality), params: { pm_nationality: { name: @pm_nationality.name } }
    assert_redirected_to pm_nationality_url(@pm_nationality)
  end

  test "should destroy pm_nationality" do
    assert_difference('PmNationality.count', -1) do
      delete pm_nationality_url(@pm_nationality)
    end

    assert_redirected_to pm_nationalities_url
  end
end
