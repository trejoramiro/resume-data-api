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
    @student = Student.find_by(id: params[:student_id])
    @educations = @student.educations
    @educations.each do |education|
      if education.id.to_s == params[:id]
        @education = education
      end
    end
    # @education = Education.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
