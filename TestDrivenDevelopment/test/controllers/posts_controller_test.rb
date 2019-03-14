require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get posts_url
    assert_response :success
  end
  test "should get new" do
    get "/posts/new"
    assert_response :success
  end
  test "should get show" do
    assert_generates "posts/1", { controller: "posts", action: "show", id: "1"}
  end
end
