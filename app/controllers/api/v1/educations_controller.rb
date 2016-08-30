class Api::V1::EducationsController < ApplicationController
  def index
    @education = Education.where(student_id: params[:student_id])
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find_by(id: params[:id], student_id: params[:student_id])
    render 'show.json.jbuilder'
  end

  def create
    @education = Education.new(
      start_date: params[:start_date],
      end_date: params[:end_date],
      degree: params[:degree],
      university_name: params[:university],
      details: params[:details],
      student_id: params[:student_id])
    render json: { status: :ok,
        message: "Succesffuly created"}.to_json
  end
  
end
