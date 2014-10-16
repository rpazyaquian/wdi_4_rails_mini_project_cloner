require 'rails_helper'

RSpec.describe Post, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:post)).to be_valid
  end
  it "is invalid without a link"
  it "is invalid without a title"
  it "belongs to a User"
end
