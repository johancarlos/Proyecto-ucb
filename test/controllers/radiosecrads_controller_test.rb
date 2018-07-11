require 'test_helper'

class RadiosecradsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @radiosecrad = radiosecrads(:one)
  end

  test "should get index" do
    get radiosecrads_url
    assert_response :success
  end

  test "should get new" do
    get new_radiosecrad_url
    assert_response :success
  end

  test "should create radiosecrad" do
    assert_difference('Radiosecrad.count') do
      post radiosecrads_url, params: { radiosecrad: { datte: @radiosecrad.datte, details: @radiosecrad.details, progration: @radiosecrad.progration, schedule: @radiosecrad.schedule } }
    end

    assert_redirected_to radiosecrad_url(Radiosecrad.last)
  end

  test "should show radiosecrad" do
    get radiosecrad_url(@radiosecrad)
    assert_response :success
  end

  test "should get edit" do
    get edit_radiosecrad_url(@radiosecrad)
    assert_response :success
  end

  test "should update radiosecrad" do
    patch radiosecrad_url(@radiosecrad), params: { radiosecrad: { datte: @radiosecrad.datte, details: @radiosecrad.details, progration: @radiosecrad.progration, schedule: @radiosecrad.schedule } }
    assert_redirected_to radiosecrad_url(@radiosecrad)
  end

  test "should destroy radiosecrad" do
    assert_difference('Radiosecrad.count', -1) do
      delete radiosecrad_url(@radiosecrad)
    end

    assert_redirected_to radiosecrads_url
  end
end
