class Api::V1::EducationsController < ApplicationController
  def index
    @all_education = Education.find_by(:user_id)
    render 'index.json.jbuilder'
  end

  def show
    @education = Education.find_by(:id)
    render 'show.json.jbuilder'
  end
end