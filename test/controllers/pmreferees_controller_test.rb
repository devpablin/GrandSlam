require 'test_helper'

class PmrefereesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmreferee = pmreferees(:one)
  end

  test "should get index" do
    get pmreferees_url
    assert_response :success
  end

  test "should get new" do
    get new_pmreferee_url
    assert_response :success
  end

  test "should create pmreferee" do
    assert_difference('Pmreferee.count') do
      post pmreferees_url, params: { pmreferee: { first_name: @pmreferee.first_name, last_name: @pmreferee.last_name } }
    end

    assert_redirected_to pmreferee_url(Pmreferee.last)
  end

  test "should show pmreferee" do
    get pmreferee_url(@pmreferee)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmreferee_url(@pmreferee)
    assert_response :success
  end

  test "should update pmreferee" do
    patch pmreferee_url(@pmreferee), params: { pmreferee: { first_name: @pmreferee.first_name, last_name: @pmreferee.last_name } }
    assert_redirected_to pmreferee_url(@pmreferee)
  end

  test "should destroy pmreferee" do
    assert_difference('Pmreferee.count', -1) do
      delete pmreferee_url(@pmreferee)
    end

    assert_redirected_to pmreferees_url
  end
end
