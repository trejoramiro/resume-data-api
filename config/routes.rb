Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'students#index'
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'

      get '/students/:student_id/education' => 'educations#index'
      get '/students/:student_id/education/:id' => 'educations#show'
      post '/students/:student_id/education' => 'educations#create'

      get '/students/:student_id/experiences' => 'experiences#index'
      get '/students/:student_id/experiences/:id' => 'experiences#show'

      get '/students/:student_id/skills' => 'skills#index'
      get '/students/:student_id/skills/:id' => 'skills#show'
    end
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
