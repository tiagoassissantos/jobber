require 'test_helper'

class AdministrarControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
