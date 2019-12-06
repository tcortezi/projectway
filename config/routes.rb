Rails.application.routes.draw do
  root to: 'pages#index'
  get 'empresa', to: 'pages#empresa'
  get 'clientes', to: 'pages#clientes'
  get 'resultados', to: 'pages#resultados'
  get 'servicos/1', to: 'pages#servicos1'
  get 'servicos/2', to: 'pages#servicos2'
  get 'contato', to: 'pages#contato'
  post 'contact', to: 'contacts#create'
end
