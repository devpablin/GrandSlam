require 'test_helper'

class PmplayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmplayer = pmplayers(:one)
  end

  test "should get index" do
    get pmplayers_url
    assert_response :success
  end

  test "should get new" do
    get new_pmplayer_url
    assert_response :success
  end

  test "should create pmplayer" do
    assert_difference('Pmplayer.count') do
      post pmplayers_url, params: { pmplayer: { fechanacimiento: @pmplayer.fechanacimiento, first_name: @pmplayer.first_name, last_name: @pmplayer.last_name } }
    end

    assert_redirected_to pmplayer_url(Pmplayer.last)
  end

  test "should show pmplayer" do
    get pmplayer_url(@pmplayer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmplayer_url(@pmplayer)
    assert_response :success
  end

  test "should update pmplayer" do
    patch pmplayer_url(@pmplayer), params: { pmplayer: { fechanacimiento: @pmplayer.fechanacimiento, first_name: @pmplayer.first_name, last_name: @pmplayer.last_name } }
    assert_redirected_to pmplayer_url(@pmplayer)
  end

  test "should destroy pmplayer" do
    assert_difference('Pmplayer.count', -1) do
      delete pmplayer_url(@pmplayer)
    end

    assert_redirected_to pmplayers_url
  end
end
