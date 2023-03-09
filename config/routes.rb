Rails.application.routes.draw do
  resources :carros
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "carros#index"

  get '/estados', to: 'estados#index'
  get '/times', to: 'times#index'
  get '/cidades', to: 'estados#listar_cidades'
  get '/municipios', to: 'estados#listar_municipios'
end
