class EmailSubmissionsController < ApplicationController

  def new
  end

  def create
    @email_submission= EmailSubmission.new(email_submission_params)
    @email_submission.user = current_user
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

  def destroy
    @email_submission = EmailSubmission.find(params[:id])
    if @email_submission.user == current_user
      @email_submission.destroy
    end
    redirect_to new_email_submission_path
     #authorize @email_submission

=begin
    if @email_submission.destroy
       flash[:notice] = "\"#{@email_submission.title}\" was deleted successfully."
       redirect_to new_email_submission_path
     else
       flash[:error] = "There was an error deleting."
       render :show
     end
=end
  end

  private

  def email_submission_params
    params.require(:email_submission).permit(:title, :text)
  end

end
