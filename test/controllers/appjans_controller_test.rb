require 'test_helper'

class AppjansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get appjans_new_url
    assert_response :success
  end

end
