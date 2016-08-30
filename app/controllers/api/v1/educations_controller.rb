class Api::V1::EducationsController < ApplicationController
  def index
    @education = Education.where(student_id: params[:student_id])
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:student_id])
    @education = Education.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
