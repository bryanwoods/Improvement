require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

context "A Yes Vote (in general)" do
  setup do
    @yes_vote = YesVote.new
  end
  
  it "should no longer require a body" do
    lambda do
      u = create_yes_vote(:body => nil)
      u.errors.on(:body).should be_nil
    end.should change(YesVote, :count)
  end
  
  protected
    def create_yes_vote(options = {})
      record = YesVote.new({ :poll_id => '1', 
                             :body => 'YES', 
                             :created_at => 'Wed May 13 11:47:24 -0400 2009', 
                             :updated_at => "#{Time.now}"}.merge(options))
      record.save
      record
    end
end