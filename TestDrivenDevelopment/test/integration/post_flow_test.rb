require 'test_helper'

class PostFlowTest < ActionDispatch::IntegrationTest
  test "can see the post#index as home page" do
    get "/" 
    assert_select "h1", "Post#index"
  end
  test "can create a post" do
    get '/posts/new'
    assert_response :success
    
    post "/posts",
      params: {post: {title: "Post Title", body: "Post body"}}
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select "h2", "Post Title"
  end
end
