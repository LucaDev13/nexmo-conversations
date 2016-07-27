require 'test_helper'

class NccoStreamActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco_stream_action = ncco_stream_actions(:one)
  end

  test "should get index" do
    get ncco_stream_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_stream_action_url
    assert_response :success
  end

  test "should create ncco_stream_action" do
    assert_difference('NccoStreamAction.count') do
      post ncco_stream_actions_url, params: { ncco_stream_action: { loop: @ncco_stream_action.loop, stream_url: @ncco_stream_action.stream_url } }
    end

    assert_redirected_to ncco_stream_action_url(NccoStreamAction.last)
  end

  test "should show ncco_stream_action" do
    get ncco_stream_action_url(@ncco_stream_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_stream_action_url(@ncco_stream_action)
    assert_response :success
  end

  test "should update ncco_stream_action" do
    patch ncco_stream_action_url(@ncco_stream_action), params: { ncco_stream_action: { loop: @ncco_stream_action.loop, stream_url: @ncco_stream_action.stream_url } }
    assert_redirected_to ncco_stream_action_url(@ncco_stream_action)
  end

  test "should destroy ncco_stream_action" do
    assert_difference('NccoStreamAction.count', -1) do
      delete ncco_stream_action_url(@ncco_stream_action)
    end

    assert_redirected_to ncco_stream_actions_url
  end
end
