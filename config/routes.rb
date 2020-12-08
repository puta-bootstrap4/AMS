Rails.application.routes.draw do
  get '/'=> "home#top"
  get 'users/index'=>"users#index"
  get "users/:id" => "users#show"
  get "appjans/:date/:id/new" => "appjans#new"
  get "appjans/:date/:id/edit" => "appjans#edit"
  get "conjans/:date/:id/new" => "conjans#new"
  get "conjans/:date/:id/edit" => "conjans#edit"
  post "conjans/:date/:id/create" =>"conjans#create"
  post "appjans/:date/:id/create" => "appjans#create"
  post "appjans/:date/:id/update" => "appjans#update"
  post "conjans/:date/:id/update" => "conjans#update"
  post "users/new" => "users#new"
  post "users/create" => "users#create"
  post "login" => "users#login"
  post "logout"=> "users#logout"
  post "users/:id/destroy" =>"users#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
