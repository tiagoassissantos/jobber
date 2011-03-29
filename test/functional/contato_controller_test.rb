require 'test_helper'

class ContatoControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get envia" do
    get :envia
    assert_response :success
  end

end
