require File.dirname(__FILE__) + '/../spec_helper'

describe YesVotesController do 
  def create_yes_vote(options = {})
    post :create, :yes_vote => ({ :poll_id => '1', 
                                  :body => 'YES', 
                                  :created_at => 'Wed May 13 11:47:24 -0400 2009', 
                                  :updated_at => "#{Time.now}"}.merge(options))
  end
end