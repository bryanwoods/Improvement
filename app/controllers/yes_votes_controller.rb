class YesVotesController < ApplicationController
 def create
   @poll = Poll.find(params[:poll_id])
   @yes_vote = @poll.yes_votes.create!(params[:yes_vote])
   redirect_to @poll
 end
end
