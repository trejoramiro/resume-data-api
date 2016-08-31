Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'students#index'
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'

      get '/students/:student_id/education' => 'educations#index'
      get '/students/:student_id/education/:id' => 'educations#show' 

      get '/students/:student_id/experiences' => 'experiences#index'
      get '/students/:student_id/experiences/:id' => 'experiences#show'
      post '/students/:student_id/experiences' => 'experiences#create'
      patch '/experiences/:id' => 'experiences#update'
      delete '/students/:student_id/experiences/:id' => 'experiences#destroy'

      get '/students/:student_id/skills' => 'skills#index'
      get '/students/:student_id/skills/:id' => 'skills#show'
    end
  end
end

