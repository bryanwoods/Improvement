class NoVotesController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @no_vote = @poll.no_votes.create!(params[:no_vote])
    redirect_to @poll
  end
end