class UniversitiesController < ApplicationController
 def index
    if params[:search]
      @universities = University.search(params[:search]).order("created_at DESC")
    else
      @universities = University.order("created_at DESC")
    end
  end

  def show
    @university = University.find(params[:id])
    @courses = Course.where(:university_id => @university.id)
  end

  def new
    @university = University.new
  end

  def edit
    @university = University.find(params[:id])
  end

  def create
    @university = University.new(university_params)

    if @university.save
      redirect_to university_path
    else
      render:new
    end
  end

  protected

  def university_params
    params.require(:university).permit(
      :name, :city
    )
  end
end
