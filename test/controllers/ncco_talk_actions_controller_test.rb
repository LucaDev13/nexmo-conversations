require 'test_helper'

class NccoTalkActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco_talk_action = ncco_talk_actions(:one)
  end

  test "should get index" do
    get ncco_talk_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_talk_action_url
    assert_response :success
  end

  test "should create ncco_talk_action" do
    assert_difference('NccoTalkAction.count') do
      post ncco_talk_actions_url, params: { ncco_talk_action: { level: @ncco_talk_action.level, loop: @ncco_talk_action.loop, text: @ncco_talk_action.text, voice_name: @ncco_talk_action.voice_name } }
    end

    assert_redirected_to ncco_talk_action_url(NccoTalkAction.last)
  end

  test "should show ncco_talk_action" do
    get ncco_talk_action_url(@ncco_talk_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_talk_action_url(@ncco_talk_action)
    assert_response :success
  end

  test "should update ncco_talk_action" do
    patch ncco_talk_action_url(@ncco_talk_action), params: { ncco_talk_action: { level: @ncco_talk_action.level, loop: @ncco_talk_action.loop, text: @ncco_talk_action.text, voice_name: @ncco_talk_action.voice_name } }
    assert_redirected_to ncco_talk_action_url(@ncco_talk_action)
  end

  test "should destroy ncco_talk_action" do
    assert_difference('NccoTalkAction.count', -1) do
      delete ncco_talk_action_url(@ncco_talk_action)
    end

    assert_redirected_to ncco_talk_actions_url
  end
end
