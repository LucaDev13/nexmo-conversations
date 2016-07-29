require 'test_helper'

class EventUrlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event_url = event_urls(:one)
  end

  test "should get index" do
    get event_urls_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url_url
    assert_response :success
  end

  test "should create event_url" do
    assert_difference('EventUrl.count') do
      post event_urls_url, params: { event_url: {  } }
    end

    assert_redirected_to event_url_url(EventUrl.last)
  end

  test "should show event_url" do
    get event_url_url(@event_url)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url_url(@event_url)
    assert_response :success
  end

  test "should update event_url" do
    patch event_url_url(@event_url), params: { event_url: {  } }
    assert_redirected_to event_url_url(@event_url)
  end

  test "should destroy event_url" do
    assert_difference('EventUrl.count', -1) do
      delete event_url_url(@event_url)
    end

    assert_redirected_to event_urls_url
  end
end
