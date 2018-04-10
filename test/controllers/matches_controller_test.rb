require 'test_helper'

class MatchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @match = matches(:one)
  end

  test "should get index" do
    get matches_url
    assert_response :success
  end

  test "should get new" do
    get new_match_url
    assert_response :success
  end

  test "should create match" do
    assert_difference('Match.count') do
      post matches_url, params: { match: { clip: @match.clip, match_start: @match.match_start, stream_start: @match.stream_start, team1: @match.team1, team2: @match.team2, title: @match.title, vodID: @match.vodID, vod_start: @match.vod_start } }
    end

    assert_redirected_to match_url(Match.last)
  end

  test "should show match" do
    get match_url(@match)
    assert_response :success
  end

  test "should get edit" do
    get edit_match_url(@match)
    assert_response :success
  end

  test "should update match" do
    patch match_url(@match), params: { match: { clip: @match.clip, match_start: @match.match_start, stream_start: @match.stream_start, team1: @match.team1, team2: @match.team2, title: @match.title, vodID: @match.vodID, vod_start: @match.vod_start } }
    assert_redirected_to match_url(@match)
  end

  test "should destroy match" do
    assert_difference('Match.count', -1) do
      delete match_url(@match)
    end

    assert_redirected_to matches_url
  end
end
