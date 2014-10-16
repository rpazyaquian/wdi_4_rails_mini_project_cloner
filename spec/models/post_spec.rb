require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:post)).to be_valid
  end
  it "is invalid without a link" do
    expect(FactoryGirl.build(:post, link: nil)).not_to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:post, title: nil)).not_to be_valid
  end
  it "belongs to a User" do
    user = FactoryGirl.create(:user)
    post = FactoryGirl.create(:post, user_id: user.id)

    expect(user.posts.first).to eq post
  end
  it "is invalid without a User" do
    post = FactoryGirl.build(:post, user_id: nil)
    expect(post).not_to be_valid
  end
end
