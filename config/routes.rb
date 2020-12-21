Rails.application.routes.draw do
  get '/'=> "home#top"
  get 'users/index'=>"users#index"
  get "users/:id" => "users#show"
  get "appjans/:work_date/:id/new" => "app_januaries#new"
  get "appjans/:work_date/:id/edit" => "app_januaries#edit"
  get "conjans/:work_date/:id/new" => "con_januaries#new"
  get "conjans/:work_date/:id/edit" => "con_januaries#edit"
  post "conjans/:work_date/:id/create" =>"con_januaries#create"
  post "appjans/:work_date/:id/create" => "app_januaries#create"
  post "appjans/:work_date/:id/update" => "app_januaries#update"
  post "conjans/:work_date/:id/update" => "con_januaries#update"
  post "users/create" => "users#create"
  post "login" => "users#login"
  post "logout"=> "users#logout"
  post "users/new" => "users#new"
  post "users/:id/destroy" =>"users#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
