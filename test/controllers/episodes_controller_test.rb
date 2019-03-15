require 'test_helper'

class EpisodesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get episodes_new_url
    assert_response :success
  end

end
