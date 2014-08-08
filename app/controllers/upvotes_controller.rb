class UpvotesController < ApplicationController
  def new
    @upvote = Upvote.new(upvote_params)
  end

  def create
    @upvote = Upvote.new
    @upvote.user_id = current_user.id
    @upvote.note_id = params[:note_id]
  end

  def destroy
    @upvote = Upvote.find(params[:id])
    @upvote.destroy
    redirect_to university_course_notes_path
  end

  protected

  def upvote_params

  end
end
