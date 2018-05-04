Rails.application.routes.draw do
  resources :abastecimentos
  # devise_for :usuarios, controllers: {
  #       sessions: 'usuarios/sessions',
  #       registrations: 'usuarios/registrations'
  #     }
  devise_for :usuarios
  resources :limpezas
  resources :manutencoes
  resources :devolucoes
  resources :veiculos do
    resources :abastecimentos
    resources :limpezas
    resources :manutencoes
    resources :reservas do
      resources :devolucoes
    end 
  end
  resources :reservas do
    resources :devolucoes
  end
  get 'index2' => 'veiculos#index2' 

  devise_scope :usuario do
    authenticated :usuario do
      root 'devise/sessions#new', as: :authenticated_root
    end

    #unauthenticated do
    root 'devise/sessions#new'#, as: :unauthenticated_root
    #end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
