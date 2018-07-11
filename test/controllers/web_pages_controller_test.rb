require 'test_helper'

class WebPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @web_page = web_pages(:one)
  end

  test "should get index" do
    get web_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_web_page_url
    assert_response :success
  end

  test "should create web_page" do
    assert_difference('WebPage.count') do
      post web_pages_url, params: { web_page: { image: @web_page.image, link: @web_page.link, name: @web_page.name } }
    end

    assert_redirected_to web_page_url(WebPage.last)
  end

  test "should show web_page" do
    get web_page_url(@web_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_web_page_url(@web_page)
    assert_response :success
  end

  test "should update web_page" do
    patch web_page_url(@web_page), params: { web_page: { image: @web_page.image, link: @web_page.link, name: @web_page.name } }
    assert_redirected_to web_page_url(@web_page)
  end

  test "should destroy web_page" do
    assert_difference('WebPage.count', -1) do
      delete web_page_url(@web_page)
    end

    assert_redirected_to web_pages_url
  end
end
