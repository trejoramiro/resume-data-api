class Api::V1::ExperiencesController < ApplicationController
  def index
    @experiences = Experience.where(student_id: params[:student_id])
    render 'index.json.jbuilder'
  end

  def show
    @experience = Experience.find_by(student_id: params[:student_id], id: params[:id])
    render 'show.json.jbuilder'
  end
end
