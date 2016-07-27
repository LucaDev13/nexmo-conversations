require 'test_helper'

class NccoConnectActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco_connect_action = ncco_connect_actions(:one)
  end

  test "should get index" do
    get ncco_connect_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_connect_action_url
    assert_response :success
  end

  test "should create ncco_connect_action" do
    assert_difference('NccoConnectAction.count') do
      post ncco_connect_actions_url, params: { ncco_connect_action: { backup_method: @ncco_connect_action.backup_method, backup_url: @ncco_connect_action.backup_url, backup_url: @ncco_connect_action.backup_url, endpoint: @ncco_connect_action.endpoint, event_method: @ncco_connect_action.event_method, event_url: @ncco_connect_action.event_url, from: @ncco_connect_action.from, halt_on_fail: @ncco_connect_action.halt_on_fail, limit: @ncco_connect_action.limit, timeout: @ncco_connect_action.timeout } }
    end

    assert_redirected_to ncco_connect_action_url(NccoConnectAction.last)
  end

  test "should show ncco_connect_action" do
    get ncco_connect_action_url(@ncco_connect_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_connect_action_url(@ncco_connect_action)
    assert_response :success
  end

  test "should update ncco_connect_action" do
    patch ncco_connect_action_url(@ncco_connect_action), params: { ncco_connect_action: { backup_method: @ncco_connect_action.backup_method, backup_url: @ncco_connect_action.backup_url, backup_url: @ncco_connect_action.backup_url, endpoint: @ncco_connect_action.endpoint, event_method: @ncco_connect_action.event_method, event_url: @ncco_connect_action.event_url, from: @ncco_connect_action.from, halt_on_fail: @ncco_connect_action.halt_on_fail, limit: @ncco_connect_action.limit, timeout: @ncco_connect_action.timeout } }
    assert_redirected_to ncco_connect_action_url(@ncco_connect_action)
  end

  test "should destroy ncco_connect_action" do
    assert_difference('NccoConnectAction.count', -1) do
      delete ncco_connect_action_url(@ncco_connect_action)
    end

    assert_redirected_to ncco_connect_actions_url
  end
end
