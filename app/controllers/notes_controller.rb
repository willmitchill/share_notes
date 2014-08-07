class NotesController < ApplicationController
  def index
    @notes = Note.where(params[:course_id])
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def show
    @note = Note.find(params[:id])
  end
end
