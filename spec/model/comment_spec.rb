require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:first_user) { User.create(name: 'John') }

  subject { Comment.new(user: first_user, post: post, content: 'This is a comment.') }

  before { subject.save }

  context 'when updating comments counter' do
    let(:post) { Post.create(author: first_user, title: 'Hello', text: 'This is my first post') }

    it 'should update comments counter' do
      comment1 = post.comments.create(user: first_user, content: 'Comment 1')
      comment2 = post.comments.create(user: first_user, content: 'Comment 2')
      comment3 = post.comments.create(user: first_user, content: 'Comment 3')

      post.update_comments_counter
      post.reload

      expect(post.comments_count).to eq(4)
    end
  end
end