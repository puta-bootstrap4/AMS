Rails.application.routes.draw do
  get 'users/index'=>"users#index"
  get "users/:id" => "users#show"
  get '/'=> "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "login" => "users#login"
  post "logout"=> "users#logout"
end
