require 'test_helper'

class PmtrainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pmtrainer = pmtrainers(:one)
  end

  test "should get index" do
    get pmtrainers_url
    assert_response :success
  end

  test "should get new" do
    get new_pmtrainer_url
    assert_response :success
  end

  test "should create pmtrainer" do
    assert_difference('Pmtrainer.count') do
      post pmtrainers_url, params: { pmtrainer: { apellido: @pmtrainer.apellido, nombre: @pmtrainer.nombre } }
    end

    assert_redirected_to pmtrainer_url(Pmtrainer.last)
  end

  test "should show pmtrainer" do
    get pmtrainer_url(@pmtrainer)
    assert_response :success
  end

  test "should get edit" do
    get edit_pmtrainer_url(@pmtrainer)
    assert_response :success
  end

  test "should update pmtrainer" do
    patch pmtrainer_url(@pmtrainer), params: { pmtrainer: { apellido: @pmtrainer.apellido, nombre: @pmtrainer.nombre } }
    assert_redirected_to pmtrainer_url(@pmtrainer)
  end

  test "should destroy pmtrainer" do
    assert_difference('Pmtrainer.count', -1) do
      delete pmtrainer_url(@pmtrainer)
    end

    assert_redirected_to pmtrainers_url
  end
end
