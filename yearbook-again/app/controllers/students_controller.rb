class StudentsController < ApplicationController

  def list

    @studentlist = Student.all

  end

  def person

    @studentid = Student.find(params[:id])

  end

end

