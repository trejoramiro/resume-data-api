class Api::V1::StudentsController < ApplicationController
  def index
    render 'index.json.jbuilder'
  end

  def show
    render 'show.json.jbuilder'
  end
end
