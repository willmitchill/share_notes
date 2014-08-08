class CoursesController < ApplicationController

  # def index
  #   if params[:search]
  #     @courses = Course.search(params[:search]).order("created_at DESC")
  #   else
  #     @courses = Course.order("created_at DESC")
  #   end
  # end

  def index
    @courses = Course.where(params[:university_id])
  end

  def show
    @course = Course.find(params[:id])
    @notes = @course.notes
    @note = @course.notes.build
    @note.user = current_user
  end

  def edit
  end

  def update
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user_id = current_user.id
    @course.university_id = params[:university_id]
    if @course.save
      redirect_to university_course_path(@course.university, @course)

    end
  end

  def destroy
  end

  protected

  def course_params
    params.require(:course).permit(
      :name, :department, :course_number
    )
  end

end
