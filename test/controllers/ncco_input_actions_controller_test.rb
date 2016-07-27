require 'test_helper'

class NccoInputActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco_input_action = ncco_input_actions(:one)
  end

  test "should get index" do
    get ncco_input_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_input_action_url
    assert_response :success
  end

  test "should create ncco_input_action" do
    assert_difference('NccoInputAction.count') do
      post ncco_input_actions_url, params: { ncco_input_action: { event_method: @ncco_input_action.event_method, event_url: @ncco_input_action.event_url, max_digits: @ncco_input_action.max_digits, submit_on_hash: @ncco_input_action.submit_on_hash, time_out: @ncco_input_action.time_out } }
    end

    assert_redirected_to ncco_input_action_url(NccoInputAction.last)
  end

  test "should show ncco_input_action" do
    get ncco_input_action_url(@ncco_input_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_input_action_url(@ncco_input_action)
    assert_response :success
  end

  test "should update ncco_input_action" do
    patch ncco_input_action_url(@ncco_input_action), params: { ncco_input_action: { event_method: @ncco_input_action.event_method, event_url: @ncco_input_action.event_url, max_digits: @ncco_input_action.max_digits, submit_on_hash: @ncco_input_action.submit_on_hash, time_out: @ncco_input_action.time_out } }
    assert_redirected_to ncco_input_action_url(@ncco_input_action)
  end

  test "should destroy ncco_input_action" do
    assert_difference('NccoInputAction.count', -1) do
      delete ncco_input_action_url(@ncco_input_action)
    end

    assert_redirected_to ncco_input_actions_url
  end
end
