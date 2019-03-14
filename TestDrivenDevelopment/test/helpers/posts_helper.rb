require "test_helper"

class PostsHelperTest < ActionView::TestCase
  test "link_to_post helper should get correct path" do
    post = posts(:one)
    assert_dom_equal %{<a href="/posts/#{post.id}">TitleString</a>}, link_to_post(post)
  end
end