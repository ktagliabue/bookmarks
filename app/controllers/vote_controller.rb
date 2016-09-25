class VoteController < ApplicationController
  def up_vote
    if current_user.votes.where(email_submission: params[:email_submission_id]).empty?
      @vote = Vote.new
      @vote.email_submission = EmailSubmission.find(params[:email_submission_id])
      @vote.user = current_user
      @vote.value = 1
      @vote.save
    end
    redirect_to :back
  end
  def down_vote
    if current_user.votes.where(email_submission: params[:email_submission_id]).empty?
      @vote = Vote.new
      @vote.email_submission = EmailSubmission.find(params[:email_submission_id])
      @vote.user = current_user
      @vote.value = -1
      @vote.save
    end
    redirect_to :back
  end
end
