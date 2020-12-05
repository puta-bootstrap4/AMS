Rails.application.routes.draw do
  get '/'=> "home#top"
  get 'users/index'=>"users#index"
  get "users/:id" => "users#show"
  post "users/new" => "users#new"
  post "users/create" => "users#create"
  post "login" => "users#login"
  post "logout"=> "users#logout"
  post "users/:id/destroy" =>"users#destory"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
