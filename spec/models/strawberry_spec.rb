require File.dirname(__FILE__) + '/../spec_helper'

describe Strawberry do
  it "should be valid" do
    Strawberry.new.should be_valid
  end
end
