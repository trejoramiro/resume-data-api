class Api::V1::EducationsController < ApplicationController
  def index
    # @student = Student.find_by(params[:student_id])
    @student = Student.find_by(id: params[:student_id])
    all_education = Education.find_by(student_id: @student.id)
    @education = []
    @education.push(all_education)
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find_by(id: params[:id], student_id: params[:student_id])
    render 'show.json.jbuilder'
  end
end
