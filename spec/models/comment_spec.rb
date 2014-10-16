require 'rails_helper'

RSpec.describe Comment, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:comment)).to be_valid
  end
  it "is invalid without text" do
    expect(FactoryGirl.build(:comment, text: nil)).not_to be_valid
  end
  it "is invalid without points" do
    expect(FactoryGirl.build(:comment, points: nil)).not_to be_valid
  end
  it "belongs to a User"
  it "belongs to a Post"
end
