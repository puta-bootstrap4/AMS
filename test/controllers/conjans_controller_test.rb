require 'test_helper'

class ConjansControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get conjans_new_url
    assert_response :success
  end

end
