Rails.application.routes.draw do
  root to: "produtos#home"
  get "produtos", to: "produtos#index"
  get "produtos/new", to: "produtos#new"
  post "produtos", to: "produtos#create"
  get  "produtos/:id", to: "produtos#show", as: :produto
  delete "produtos/:id", to: "produtos#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
