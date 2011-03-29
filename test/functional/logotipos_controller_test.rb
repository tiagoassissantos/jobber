require 'test_helper'

class LogotiposControllerTest < ActionController::TestCase
  setup do
    @logotipo = logotipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:logotipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create logotipo" do
    assert_difference('Logotipo.count') do
      post :create, :logotipo => @logotipo.attributes
    end

    assert_redirected_to logotipo_path(assigns(:logotipo))
  end

  test "should show logotipo" do
    get :show, :id => @logotipo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @logotipo.to_param
    assert_response :success
  end

  test "should update logotipo" do
    put :update, :id => @logotipo.to_param, :logotipo => @logotipo.attributes
    assert_redirected_to logotipo_path(assigns(:logotipo))
  end

  test "should destroy logotipo" do
    assert_difference('Logotipo.count', -1) do
      delete :destroy, :id => @logotipo.to_param
    end

    assert_redirected_to logotipos_path
  end
end
