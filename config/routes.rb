Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"

  get "/jobs" => "jobs#index"
  get "/wwr" => "jobs#wwr"
  post "/jobs" => "jobs#create"

  post "/sessions" => "sessions#create"

  post "/saved_jobs" => "saved_jobs#create"
  get "/saved_jobs" => "saved_jobs#index"

  get "/companies" => "companies#index"
  post "/companies" => "companies#create"

  get "/angel" => "jobs#angel"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
