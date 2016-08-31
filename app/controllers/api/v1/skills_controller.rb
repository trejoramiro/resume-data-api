class Api::V1::SkillsController < ApplicationController
  def index
    @student = Student.find_by(id: params[:student_id])
    all_skills = Skill.find_by(student_id: @student.id)
    @skills = []
    @skills.push(all_skills)
    render 'index.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:student_id])
    @skill = Skill.find_by(id: params[:id])
    #needs to be fixed so that it won't let you type in an id number that belongs to an education that the student doesn't have.
    render 'show.json.jbuilder'
  end

  def create
    @student = Student.find_by(id: params[:student_id])
    @skill = Skill.new(
      name: params[:name],
      student_id: params[:student_id]
    )
    @skill.save
    render 'show.json.jbuilder'
  end

  def update
    @student = Student.find_by(id: params[:student_id])    
    @skill = Skill.find_by(id: params[:id])
    @skill.name = params["name"] || @skill.name
    @skill.student_id = params["student_id"] || @skill.student_id
    render 'show.json.jbuilder'
  end

  def destroy
    @student = Student.find_by(id: params[:student_id])    
    @skill = Skill.find_by(id: params[:id])
    @skill.destroy
    render json: {message: "Skill successfully deleted"}
  end
end
