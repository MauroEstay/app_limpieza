require 'test_helper'

class HometasksControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hometasks_create_url
    assert_response :success
  end

end
