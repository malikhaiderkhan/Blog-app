class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def updates_posts_counter
    update(post_count: posts.count)
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
