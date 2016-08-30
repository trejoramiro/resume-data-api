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
end
