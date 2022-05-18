Rails.application.routes.draw do
  root "consulta#index"

  resources :consulta do
    resources :pacientes
    resources :medicos
  end

  resources :pacientes

  resources :medicos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
