class CoursesController < ApplicationController
  def index
    @courses = Course.where(params[:university_id])
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end
end
