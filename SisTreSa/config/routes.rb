Rails.application.routes.draw do
  root "pacientes#index"

  resources :pacientes do
    resources :enderecos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
