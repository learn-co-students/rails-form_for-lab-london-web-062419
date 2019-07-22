class SchoolClasses < ApplicationController 

  def show
    @student_class = SchoolClass.find(params[:id])
  end

  def new 
    @school_clsdd = SchoolClass.new
  end 

  def create
    @school_class = SchoolClass.create(classes_params[:id]
    @school_class.save
  end 

  private 
    
  def classes_params
    params.require(:school_class).permit(:title, :room_number)
  end 
end 