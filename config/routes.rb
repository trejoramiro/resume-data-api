Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'students#index'
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'

      get '/education/:student_id' => 'educations#index'
      get '/education/:student_id/:id' => 'educations#show' 

      get '/experience' => 'experience#index'

      get 'skills' => 'skills#index'
      get '/experience' => 'experiences#index'           
    end
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

