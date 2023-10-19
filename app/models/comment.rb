class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def update_comments_counter
    update(comments_count: post.comments.count)
  end
end
