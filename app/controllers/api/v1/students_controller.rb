class Api::V1::StudentsController < ApplicationController
  def index
    @students = Student.all
    render 'index.json.jbuilder'
  end

  def create
    @student = Student.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      phone_number: params[:phone_number],
      bio: params[:bio],
      linked_in_url: params[:linked_in_url],
      twitter_handle: params[:twitter_handle],
      personal_url: params[:personal_url],
      resume_url: params[:resume_url],
      github_url: params[:github_url],
      photo: params[:photo]
    )
    @student.save
    render 'show.json.jbuilder'
  end

  def show
    @student = Student.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @student = Student.find_by(id: params[:id])
    @student.first_name = params[:first_name] || @student.first_name
    @student.last_name = params[:last_name] || @student.last_name
    @student.email = params[:email] || @student.email
    @student.password = params[:password] || @student.password
    @student.phone_number = params[:phone_number] || @student.phone_number
    @student.bio = params[:bio] || @student.bio
    @student.linked_in_url = params[:linked_in_url] || @student.linked_in_url
    @student.twitter_handle = params[:twitter_handle] || @student.twitter_handle
    @student.personal_url = params[:personal_url] || @student.personal_url
    @student.resume_url = params[:resume_url] || @student.resume_url
    @student.github_url = params[:github_url] || @student.github_url
    @student.photo = params[:photo] || @student.photo
    @student.save
    render 'show.json.jbuilder'
  end

  def destroy
    @student = Student.find_by(id: params[:id])
    @student.destroy
    render json: {message: "Successfully destroyed, catptain ;)"}
  end

  def authenticate
    @student = Student.find_by(password: params[:password], email: params[:email])
    if @student
      render json: { id: @student.id }
    else
      render json: { message: "Invalid email or password" }
    end
  end
end
