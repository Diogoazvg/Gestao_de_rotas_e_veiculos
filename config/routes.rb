Rails.application.routes.draw do
  # devise_for :usuarios, controllers: {
  #       sessions: 'usuarios/sessions',
  #       registrations: 'usuarios/registrations'
  #     }
  devise_for :usuarios
  resources :limpezas
  resources :manutencoes
  resources :servicos
  resources :devolucoes
  resources :reservas
  root to: "welcome#index"
  resources :veiculos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
