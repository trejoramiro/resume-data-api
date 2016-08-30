Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/' => 'students#index'
      get '/students' => 'students#index'
      get '/students/:id' => 'students#show'

      get '/education/:student_id' => 'educations#index'
      get '/education/:student_id/:id' => 'educations#show' 

      get '/experience/:student_id' => 'experiences#index'
      get '/experience/:student_id/:id' => 'experiences#show'

      get 'skills' => 'skills#index'
    end
  end
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

