require File.dirname(__FILE__) + '/../spec_helper'

describe PollsController do
  fixtures :polls  
  def create_poll(options = {})
    post :create, :poll => { :updated_at => '2009-05-08 22:12:01', :before_pic_updated_at => '2009-05-08 22:12:00',
      :after_pic_file_size => '734829', :title => 'Before_And_After', :after_pic_content_type => 'image/jpeg',
      :before_pic_file_size => '742683', :after_pic_updated_at => '2009-05-08', :description => 'Pizza and Compy',
      :before_pic_file_name => 'IMG_0387.JPG', :created_at => '2009-05-08 22:12:01', :before_pic_content_type => 'image/jpeg' }.merge(options)
  end
end