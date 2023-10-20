class Post < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :comments
  has_many :likes
  validates :title, presence: true, length: { maximum: 250 }
  validates :comments_counter, numerality: { only_integer:true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numerality: { only_integer:true, greater_than_or_equal_to: 0 }

  def update_posts_counter
    update(post_count: posts.count)
  end

  def five_recent_comments
    comments.order(created_at: :desc).limit(5)
  end
end
