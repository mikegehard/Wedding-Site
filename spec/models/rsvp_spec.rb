require "spec_helper"

describe Rsvp do
  before(:each) do
    subject.names = "Hello"
    subject.attending = true
    subject.level_of_participation = 1
  end

  it "should be valid out of the gate" do
    subject.should be_valid
  end

  it "should require names" do
    subject.names = ""
    subject.should_not be_valid

    subject.names = "Mike and Heather"
    subject.should be_valid
  end

  it "should require a yes or no on attendance" do
    subject.attending = nil
    subject.should_not be_valid

    subject.attending = 1
    subject.should be_valid
  end

  it "should require a level of participation" do
    subject.level_of_participation = nil
    subject.should_not be_valid

    subject.level_of_participation = 1
    subject.should be_valid
  end
end