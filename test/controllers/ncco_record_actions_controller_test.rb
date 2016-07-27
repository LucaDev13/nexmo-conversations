require 'test_helper'

class NccoRecordActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco_record_action = ncco_record_actions(:one)
  end

  test "should get index" do
    get ncco_record_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_record_action_url
    assert_response :success
  end

  test "should create ncco_record_action" do
    assert_difference('NccoRecordAction.count') do
      post ncco_record_actions_url, params: { ncco_record_action: { backup_method: @ncco_record_action.backup_method, backup_url: @ncco_record_action.backup_url, beep_finish: @ncco_record_action.beep_finish, beep_start: @ncco_record_action.beep_start, destination_url: @ncco_record_action.destination_url, end_on_key: @ncco_record_action.end_on_key, event_method: @ncco_record_action.event_method, event_url: @ncco_record_action.event_url, format: @ncco_record_action.format, limit: @ncco_record_action.limit, secure: @ncco_record_action.secure, split: @ncco_record_action.split, start_on_answer: @ncco_record_action.start_on_answer, streamed: @ncco_record_action.streamed, validity_time: @ncco_record_action.validity_time } }
    end

    assert_redirected_to ncco_record_action_url(NccoRecordAction.last)
  end

  test "should show ncco_record_action" do
    get ncco_record_action_url(@ncco_record_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_record_action_url(@ncco_record_action)
    assert_response :success
  end

  test "should update ncco_record_action" do
    patch ncco_record_action_url(@ncco_record_action), params: { ncco_record_action: { backup_method: @ncco_record_action.backup_method, backup_url: @ncco_record_action.backup_url, beep_finish: @ncco_record_action.beep_finish, beep_start: @ncco_record_action.beep_start, destination_url: @ncco_record_action.destination_url, end_on_key: @ncco_record_action.end_on_key, event_method: @ncco_record_action.event_method, event_url: @ncco_record_action.event_url, format: @ncco_record_action.format, limit: @ncco_record_action.limit, secure: @ncco_record_action.secure, split: @ncco_record_action.split, start_on_answer: @ncco_record_action.start_on_answer, streamed: @ncco_record_action.streamed, validity_time: @ncco_record_action.validity_time } }
    assert_redirected_to ncco_record_action_url(@ncco_record_action)
  end

  test "should destroy ncco_record_action" do
    assert_difference('NccoRecordAction.count', -1) do
      delete ncco_record_action_url(@ncco_record_action)
    end

    assert_redirected_to ncco_record_actions_url
  end
end
