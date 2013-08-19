require 'test_helper'

class JoinControllerTest < ActionController::TestCase
  test "should get join_us" do
    get :join_us
    assert_response :success
  end

end
