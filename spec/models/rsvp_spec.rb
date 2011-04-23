require "spec_helper"

describe Rsvp do
  it "should require names" do
    subject.names = ""
    subject.should_not be_valid

    subject.names = "Mike and Heather"
    subject.should be_valid
  end
end