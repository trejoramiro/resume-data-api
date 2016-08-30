class Api::V1::EducationsController < ApplicationController
  def index
    @education = Education.where(student_id: params[:student_id])
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find_by(id: params[:id], student_id: params[:student_id])
    render 'show.json.jbuilder'
  end
end
