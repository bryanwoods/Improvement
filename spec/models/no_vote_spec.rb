require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

context "A No Vote (in general)" do
  setup do
    @no_vote = NoVote.new
  end
  
  it "should require a body" do
    lambda do
      u = create_no_vote(:body => nil)
      u.errors.on(:body).should_not be_nil
    end
  end
  
  protected
    def create_no_vote(options = {})
      record = NoVote.new({  :poll_id => '1', 
                             :body => 'NO', 
                             :created_at => 'Wed May 13 11:47:24 -0400 2009', 
                             :updated_at => "#{Time.now}"}.merge(options))
      record.save
      record
    end
end