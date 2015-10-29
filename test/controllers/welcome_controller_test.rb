require 'test_helper'
# Run tests on static pages controller
class WelcomeControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
  end
end
