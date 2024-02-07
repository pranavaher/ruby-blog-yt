require "test_helper"

class BlogPostTest < ActiveSupport::TestCase
  test "draft? returns true for draft blog post" do
    assert draft_blog_post.draft?
  end

  test "draft? returns false for published blog post" do
    refute blog_posts(:published).draft?
  end

  test "draft? returns false for scheduled blog post" do
    refute blog_posts(:scheduled).draft?
  end

  test "published? returns true for published blog post" do
    assert blog_posts(:published).published?
  end

  test "published? returns false for draft blog post" do
    refute draft_blog_post.published?
  end

  test "published? returns false for scheduled blog post" do
    refute blog_posts(:scheduled).published?
  end
  
  test "scheduled? returns true for scheduled blog post" do
    assert blog_posts(:scheduled).scheduled?
  end

  test "scheduled? returns false for draft blog post" do
    refute draft_blog_post.scheduled?
  end

  test "scheduled? returns false for published blog post" do
    refute blog_posts(:published).scheduled?
  end

  def draft_blog_post
    BlogPost.new(published_at: nil)
  end
end
