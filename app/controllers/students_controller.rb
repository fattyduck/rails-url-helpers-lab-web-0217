require 'pry'
class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
    @student = set_student
    #binding.pry
  end

  def activate
    @students = set_student
    @student.activity_swap
    @student.save
    redirect_to "/students/#{@student.id}"
  end
  private

    def set_student
      @student = Student.find(params[:id])
    end

end
