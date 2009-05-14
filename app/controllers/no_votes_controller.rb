class NoVotesController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @no_vote = @poll.no_votes.create!(params[:no_vote])
    flash[:notice] = "Suck on a No Vote!"
    respond_to do |format|
      format.html { redirect_to polls_path }
      format.js
    end
  end
end