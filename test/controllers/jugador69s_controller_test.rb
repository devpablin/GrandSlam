require 'test_helper'

class Jugador69sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jugador69 = jugador69s(:one)
  end

  test "should get index" do
    get jugador69s_url
    assert_response :success
  end

  test "should get new" do
    get new_jugador69_url
    assert_response :success
  end

  test "should create jugador69" do
    assert_difference('Jugador69.count') do
      post jugador69s_url, params: { jugador69: { identrenador: @jugador69.identrenador, idnacionalidad: @jugador69.idnacionalidad, nacimiento: @jugador69.nacimiento, nombre: @jugador69.nombre } }
    end

    assert_redirected_to jugador69_url(Jugador69.last)
  end

  test "should show jugador69" do
    get jugador69_url(@jugador69)
    assert_response :success
  end

  test "should get edit" do
    get edit_jugador69_url(@jugador69)
    assert_response :success
  end

  test "should update jugador69" do
    patch jugador69_url(@jugador69), params: { jugador69: { identrenador: @jugador69.identrenador, idnacionalidad: @jugador69.idnacionalidad, nacimiento: @jugador69.nacimiento, nombre: @jugador69.nombre } }
    assert_redirected_to jugador69_url(@jugador69)
  end

  test "should destroy jugador69" do
    assert_difference('Jugador69.count', -1) do
      delete jugador69_url(@jugador69)
    end

    assert_redirected_to jugador69s_url
  end
end
