require 'test_helper'

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get authors_create_url
    assert_response :success
  end

  test "should get destroy" do
    get authors_destroy_url
    assert_response :success
  end

end
