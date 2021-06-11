Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/jobs" => "jobs#index"
  get "/wwr" => "jobs#wwr"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
