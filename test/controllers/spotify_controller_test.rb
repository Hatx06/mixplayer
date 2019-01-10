require 'test_helper'

class SpotifyControllerTest < ActionDispatch::IntegrationTest
  test "should get r" do
    get spotify_r_url
    assert_response :success
  end

end
