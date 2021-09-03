Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
  get "/articles/:id", to: "articles#show"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
