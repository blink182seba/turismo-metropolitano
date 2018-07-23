require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pages_index_url
    assert_response :success
  end

  test "should get contacto" do
    get pages_contacto_url
    assert_response :success
  end

  test "should get noticias" do
    get pages_noticias_url
    assert_response :success
  end

end
