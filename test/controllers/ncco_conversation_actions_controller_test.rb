require 'test_helper'

class NccoConversationActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco_conversation_action = ncco_conversation_actions(:one)
  end

  test "should get index" do
    get ncco_conversation_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_conversation_action_url
    assert_response :success
  end

  test "should create ncco_conversation_action" do
    assert_difference('NccoConversationAction.count') do
      post ncco_conversation_actions_url, params: { ncco_conversation_action: { earmuff: @ncco_conversation_action.earmuff, end_on_exit: @ncco_conversation_action.end_on_exit, enter_sound: @ncco_conversation_action.enter_sound, event_method: @ncco_conversation_action.event_method, event_url: @ncco_conversation_action.event_url, exit_sound: @ncco_conversation_action.exit_sound, location: @ncco_conversation_action.location, moderator_controls: @ncco_conversation_action.moderator_controls, music_on_hold_url: @ncco_conversation_action.music_on_hold_url, mute: @ncco_conversation_action.mute, name: @ncco_conversation_action.name, record: @ncco_conversation_action.record, sound_on_enter: @ncco_conversation_action.sound_on_enter } }
    end

    assert_redirected_to ncco_conversation_action_url(NccoConversationAction.last)
  end

  test "should show ncco_conversation_action" do
    get ncco_conversation_action_url(@ncco_conversation_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_conversation_action_url(@ncco_conversation_action)
    assert_response :success
  end

  test "should update ncco_conversation_action" do
    patch ncco_conversation_action_url(@ncco_conversation_action), params: { ncco_conversation_action: { earmuff: @ncco_conversation_action.earmuff, end_on_exit: @ncco_conversation_action.end_on_exit, enter_sound: @ncco_conversation_action.enter_sound, event_method: @ncco_conversation_action.event_method, event_url: @ncco_conversation_action.event_url, exit_sound: @ncco_conversation_action.exit_sound, location: @ncco_conversation_action.location, moderator_controls: @ncco_conversation_action.moderator_controls, music_on_hold_url: @ncco_conversation_action.music_on_hold_url, mute: @ncco_conversation_action.mute, name: @ncco_conversation_action.name, record: @ncco_conversation_action.record, sound_on_enter: @ncco_conversation_action.sound_on_enter } }
    assert_redirected_to ncco_conversation_action_url(@ncco_conversation_action)
  end

  test "should destroy ncco_conversation_action" do
    assert_difference('NccoConversationAction.count', -1) do
      delete ncco_conversation_action_url(@ncco_conversation_action)
    end

    assert_redirected_to ncco_conversation_actions_url
  end
end
