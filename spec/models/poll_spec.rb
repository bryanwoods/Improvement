require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
include AuthenticatedTestHelper

context "A poll (in general)" do
  setup do
    @poll = Poll.new
  end
  
  specify "should be invalid without a title" do
  end
  
  specify "should be invalid without a before_pic" do
  end
  
  specify "should be invalid without an after_pic" do
  end
end
