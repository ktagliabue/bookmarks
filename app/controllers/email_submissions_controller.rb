class EmailSubmissionsController < ApplicationController
  def new
  end
  def create
    @email_submission= EmailSubmission.new(email_submission_params)
    @email_submission.save
    redirect_to @email_submission
  end
  def post
  end
  def show
    @email_submission = EmailSubmission.find(params[:id])
  end
  def index
    @email_submissions = EmailSubmission.all
  end
  private
  def email_submission_params
    params.require(:email_submission).permit(:title, :text)
  end
end
