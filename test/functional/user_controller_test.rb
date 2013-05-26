require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get firstname:string" do
    get :firstname:string
    assert_response :success
  end

  test "should get lastname:string" do
    get :lastname:string
    assert_response :success
  end

end
