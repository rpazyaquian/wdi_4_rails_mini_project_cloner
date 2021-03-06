require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a valid factory" do
    expect(FactoryGirl.create(:user)).to be_valid
  end
  it "is invalid without an email" do
    expect(FactoryGirl.build(:user, email: nil)).not_to be_valid
  end
  it "is invalid without a password" do
    expect(FactoryGirl.build(:user, password: nil)).not_to be_valid
  end
  it "is invalid without a username" do
    expect(FactoryGirl.build(:user, username: nil)).not_to be_valid
  end
end
