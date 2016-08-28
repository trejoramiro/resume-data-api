Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      get '/education/:student_id' => 'educations#index'
      get '/education/:student_id/:id' => 'educations#show'
    end
    namespace :v1 do
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'
    end
  end
end
