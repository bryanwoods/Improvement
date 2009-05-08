require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
include AuthenticatedTestHelper

describe Poll do
  fixtures :polls
  describe 'being created' do
    before do
      @poll = nil
      @creating_poll = lambda do
        violated "#{@poll.errors.full_messages.to_sentence}" if @poll.new_record?
      end
    end
  end
  
  it 'requires title' do
  end

  it "should create a new instance given valid attributes" do
  end
end
