class StudentsController < ApplicationController

  def index
    students = Student.all
    if params.key?("name")
      
      students = Student.where(last_name: params[:name].capitalize).or(Student.where(first_name: params[:name].capitalize))
      render json: students
    else
      render json: students
    end


  end

  def find_by_id
    
    student = Student.find(params[:id])
    # byebug
    render json: student
  end


end
