class YesVotesController < ApplicationController
  def create
    @poll = Poll.find(params[:poll_id])
    @yes_vote = @poll.yes_votes.create!(params[:yes_vote])
    flash[:notice] = "Upvote Attack!"
    respond_to do |format|
      format.html { redirect_to @poll }
      format.js
    end
  end
end
