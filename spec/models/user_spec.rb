require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a valid factory"
  it "is invalid without an email"
  it "is invalid without a username"
  it "is invalid without a password"
  it "is invalid without a password confirmation"
  it "is invalid without a matching password and password confirmation"
end
