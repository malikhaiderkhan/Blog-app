class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes

  def updates_posts_counter
    update(post_count: posts.count)
  end
end
