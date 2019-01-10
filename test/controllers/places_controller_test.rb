require 'test_helper'

class PlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get playlist" do
    get places_playlist_url
    assert_response :success
  end

end
