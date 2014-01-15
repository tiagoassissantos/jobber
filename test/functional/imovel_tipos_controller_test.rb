require 'test_helper'

class ImovelTiposControllerTest < ActionController::TestCase
  setup do
    @imovel_tipo = imovel_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imovel_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imovel_tipo" do
    assert_difference('ImovelTipo.count') do
      post :create, :imovel_tipo => @imovel_tipo.attributes
    end

    assert_redirected_to imovel_tipo_path(assigns(:imovel_tipo))
  end

  test "should show imovel_tipo" do
    get :show, :id => @imovel_tipo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @imovel_tipo.to_param
    assert_response :success
  end

  test "should update imovel_tipo" do
    put :update, :id => @imovel_tipo.to_param, :imovel_tipo => @imovel_tipo.attributes
    assert_redirected_to imovel_tipo_path(assigns(:imovel_tipo))
  end

  test "should destroy imovel_tipo" do
    assert_difference('ImovelTipo.count', -1) do
      delete :destroy, :id => @imovel_tipo.to_param
    end

    assert_redirected_to imovel_tipos_path
  end
end
