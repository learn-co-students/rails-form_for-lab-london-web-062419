class StudentController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end 

  def new 
  end 

  def create 
    @student = Student.new(student_params[:id])
    @student.save
  end 

  private 

  def student_params 
    params.require(:student).permit(:first_name, :last_name)
  end 
end 