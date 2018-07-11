require 'test_helper'

class AboutsecradsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aboutsecrad = aboutsecrads(:one)
  end

  test "should get index" do
    get aboutsecrads_url
    assert_response :success
  end

  test "should get new" do
    get new_aboutsecrad_url
    assert_response :success
  end

  test "should create aboutsecrad" do
    assert_difference('Aboutsecrad.count') do
      post aboutsecrads_url, params: { aboutsecrad: { body1: @aboutsecrad.body1, body2: @aboutsecrad.body2, body3: @aboutsecrad.body3, image: @aboutsecrad.image, title1: @aboutsecrad.title1, title2: @aboutsecrad.title2, title3: @aboutsecrad.title3 } }
    end

    assert_redirected_to aboutsecrad_url(Aboutsecrad.last)
  end

  test "should show aboutsecrad" do
    get aboutsecrad_url(@aboutsecrad)
    assert_response :success
  end

  test "should get edit" do
    get edit_aboutsecrad_url(@aboutsecrad)
    assert_response :success
  end

  test "should update aboutsecrad" do
    patch aboutsecrad_url(@aboutsecrad), params: { aboutsecrad: { body1: @aboutsecrad.body1, body2: @aboutsecrad.body2, body3: @aboutsecrad.body3, image: @aboutsecrad.image, title1: @aboutsecrad.title1, title2: @aboutsecrad.title2, title3: @aboutsecrad.title3 } }
    assert_redirected_to aboutsecrad_url(@aboutsecrad)
  end

  test "should destroy aboutsecrad" do
    assert_difference('Aboutsecrad.count', -1) do
      delete aboutsecrad_url(@aboutsecrad)
    end

    assert_redirected_to aboutsecrads_url
  end
end
