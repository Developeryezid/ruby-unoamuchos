require "test_helper"

class Clientes::ArticulosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get clientes_articulos_index_url
    assert_response :success
  end

  test "should get new" do
    get clientes_articulos_new_url
    assert_response :success
  end

  test "should get show" do
    get clientes_articulos_show_url
    assert_response :success
  end

  test "should get edit" do
    get clientes_articulos_edit_url
    assert_response :success
  end
end
