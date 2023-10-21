require 'rails_helper'

RSpec.describe User, type: :model do
    subject { User.new(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.') }
    
    before { subject.save }

    it 'name should be present' do
        subject.name = nil
        expect(subject).to_not be_valid
    end

    it 'post_count should be non negative integer' do
        subject.post_count = -1
        expect(subject).to_not be_valid

        subject.post_count = 0
        expect(subject).to be_valid

        subject.post_count = 5
        expect(subject).to be_valid

        subject.post_count = 'abc'
        expect(subject).to_not be_valid
    end

    it 'expect recent posts to be 0 ' do
        expect(subject.three_recent_posts.length).to eq(0)
    end
end