require 'test_helper'

class NccosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ncco = nccos(:one)
  end

  test "should get index" do
    get nccos_url
    assert_response :success
  end

  test "should get new" do
    get new_ncco_url
    assert_response :success
  end

  test "should create ncco" do
    assert_difference('Ncco.count') do
      post nccos_url, params: { ncco: {  } }
    end

    assert_redirected_to ncco_url(Ncco.last)
  end

  test "should show ncco" do
    get ncco_url(@ncco)
    assert_response :success
  end

  test "should get edit" do
    get edit_ncco_url(@ncco)
    assert_response :success
  end

  test "should update ncco" do
    patch ncco_url(@ncco), params: { ncco: {  } }
    assert_redirected_to ncco_url(@ncco)
  end

  test "should destroy ncco" do
    assert_difference('Ncco.count', -1) do
      delete ncco_url(@ncco)
    end

    assert_redirected_to nccos_url
  end
end
