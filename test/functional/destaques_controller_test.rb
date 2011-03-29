require 'test_helper'

class DestaquesControllerTest < ActionController::TestCase
  setup do
    @destaque = destaques(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destaques)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destaque" do
    assert_difference('Destaque.count') do
      post :create, :destaque => @destaque.attributes
    end

    assert_redirected_to destaque_path(assigns(:destaque))
  end

  test "should show destaque" do
    get :show, :id => @destaque.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @destaque.to_param
    assert_response :success
  end

  test "should update destaque" do
    put :update, :id => @destaque.to_param, :destaque => @destaque.attributes
    assert_redirected_to destaque_path(assigns(:destaque))
  end

  test "should destroy destaque" do
    assert_difference('Destaque.count', -1) do
      delete :destroy, :id => @destaque.to_param
    end

    assert_redirected_to destaques_path
  end
end
