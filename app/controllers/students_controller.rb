class StudentsController < ApplicationController

  def index
    students = if params [:name]
      Student.by_name(params[:name])
    else
      students.all
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
