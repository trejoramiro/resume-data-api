class Api::V1::SkillsController < ApplicationController
  def index
    @skills = Skill.all
    render 'index.json.jbuilder'
  end

  def show
    @skill = Skill.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
