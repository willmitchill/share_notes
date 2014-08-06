class CoursesController < ApplicationController
  def index
    @courses = Courses.find(params[:university_id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end


end
