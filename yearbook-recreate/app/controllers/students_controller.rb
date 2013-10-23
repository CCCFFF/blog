class StudentsController < ApplicationController

  def list
    @studentlist = Student.all
  end

  def show
    @studentid = Student.find(params[:id])
  end
end

