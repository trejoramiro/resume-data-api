class Api::V1::ExperiencesController < ApplicationController
  def index
    # @experience = []
    # @student = Student.find_by(id: params[:student_id])
    # @experiences = Experience.where(student_id: params[:student_id])
    # @experience.push(@experiences)
    @experiences = Experience.where(student_id: params[:student_id])

    render 'index.json.jbuilder'
  end

  def show
    @experience = Experience.find_by(student_id: params[:student_id], id: params[:id])
    render 'show.json.jbuilder'
  end
end
