class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end

  def show
    @experience = Experience.find_by(id: params[:id], student_id: params[:student_id])
    render 'show.json.jbuilder'
  end
end
