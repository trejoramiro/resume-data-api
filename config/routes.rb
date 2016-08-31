Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'students#index'
      get '/students' => 'students#index'
      post '/students' => 'students#create'
      get '/students/:id' => 'students#show'
      patch '/students/:id' => 'students#update'
      delete '/students/:id' => 'students#destroy'

      get '/students/:student_id/education' => 'educations#index'
      get '/students/:student_id/education/:id' => 'educations#show'
      post '/students/:student_id/education' => 'educations#create'
      patch '/students/education/:id' => 'educations#update'
      delete '/students/education/:id' => 'educations#destroy'

      get '/students/:student_id/experiences' => 'experiences#index'
      get '/students/:student_id/experiences/:id' => 'experiences#show'
      post '/students/:student_id/experiences' => 'experiences#create'
      patch '/students/experiences/:id' => 'experiences#update'
      delete '/students/experiences/:id' => 'experiences#destroy'

      get '/students/:student_id/skills' => 'skills#index'
      get '/students/:student_id/skills/:id' => 'skills#show'
      post '/students/:student_id/skills' => 'skills#create'
      patch '/students/skills/:id' => 'skills#update'
      delete '/students/skills/:id' => 'skills#destroy'
    end
  end
end
