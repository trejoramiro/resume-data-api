Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'skills/index'
      get '/education/:student_id' => 'educations#index'
      get '/education/:student_id/:id' => 'educations#show' 
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'
      get '/experience' => 'experiences#index'           
    end
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

