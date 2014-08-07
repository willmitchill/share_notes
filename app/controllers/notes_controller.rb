class NotesController < ApplicationController
  def index
    @notes = Note.where(params[:course_id])
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    @note.user_id = current_user.id
    @note.course_id = params[:course_id]

    if @note.save
      redirect_to university_course_note_path(@note.course.university, @note.course, @note.id)
    end
  end

  def edit
  end

  def show
    @note = Note.find(params[:id])
    @course = Course.find(params[:course_id])
  end


  protected

  def note_params
    params.require(:note).permit(
      :file
    )
  end
end
