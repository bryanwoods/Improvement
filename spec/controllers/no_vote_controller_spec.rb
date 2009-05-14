require File.dirname(__FILE__) + '/../spec_helper'

describe NoVotesController do 
  fixtures :polls
  def create_no_vote(options = {})
    post :create, :no_vote => ({ :poll_id => '1', 
                                 :body => 'NO', 
                                 :created_at => 'Wed May 13 11:47:24 -0400 2009', 
                                 :updated_at => "#{Time.now}"}.merge(options))
  end
end