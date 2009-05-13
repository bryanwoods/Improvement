require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')
include AuthenticatedTestHelper

context "A poll (in general)" do
  setup do
    @poll = Poll.new
  end
  
  it "should not require a title" do
    lambda do
      u = create_poll(:title => nil)
      u.errors.on(:title).should_not be_nil
    end.should_not change(Poll, :count)
  end
  
  it "should not require a description" do
    lambda do
      u = create_poll(:description => nil)
      u.errors.on(:description).should be_nil
    end.should_not change(Poll, :count)
  end
  
  it "should require a before pic" do
    lambda do
      u = create_poll(:before_pic => nil)
      u.errors.on(:before_pic).should_not be_nil
    end.should_not change(Poll, :count)
  end
  
  it "should require an after pic" do
    lambda do
      u = create_poll(:after_pic => nil)
      u.errors.on(:after_pic).should_not be_nil
    end.should_not change(Poll, :count)
  end
    
  protected
    def create_poll(options = {})
      record = Poll.new({ :updated_at => '2009-05-08 22:12:01', 
                          :before_pic_updated_at => '2009-05-08 22:12:00', 
                          :after_pic_file_size => '734829', 
                          :title => 'Before_And_After',
                          :after_pic_content_type => 'image/jpeg',
                          :before_pic_file_size => '742683',
                          :after_pic_file_name => 'IMG_0395.JPG',
                          :after_pic_updated_at => '2009-05-08',
                          :description => 'Pizza and Compy',
                          :before_pic_file_name => 'IMG_0387.JPG',
                          :created_at => '2009-05-08 22:12:01',
                          :before_pic_content_type => 'image/jpeg'}.merge(options))
      record.save
      record
    end
end