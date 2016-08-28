class ExperiencesController < ApplicationController
  def index
    @experiences = Experience.all
    render 'index.json.jbuilder'
  end
end
