Rails.application.routes.draw do
  resources :devolucoes
  resources :reservas
  root to: "welcome#index"
  resources :veiculos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
