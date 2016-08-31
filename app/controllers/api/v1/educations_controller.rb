# Educations Controller #
class Api::V1::EducationsController < ApplicationController
  def index
    @education = Education.where(student_id: params[:student_id])
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find_by(id: params[:id],
                                   student_id: params[:student_id])
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
    if @education.save
      render 'create.json.jbuilder'
    else
      render json: { status: :error, message: 'Error' }.to_json
    end
  end

  def update
    @education = Education.find_by(id: params[:id])
    @education.start_date = params[:start_date] || @education.start_date
    @education.end_date = params[:end_date] || @education.end_date
    @education.degree = params[:degree] || @education.degree
    @education.university_name = params[:university] || @education.university_name
    @education.details = params[:details] || @education.details
    @education.student_id = params[:student_id] || @education.student_id
    if @education.save
      render json: { status: :ok, message: 'Successfully created'}.to_json
    else
      render json: { status: :error, message: 'Error'}.to_json
    end
  end

  def destroy
    @education = Education.find_by(id: params[:id])
    if @education.delete
      render json: { status: :ok, message: 'Successfully created'}.to_json
    else
      render json: { status: :error, message: 'Error'}.to_json
    end
  end
end
