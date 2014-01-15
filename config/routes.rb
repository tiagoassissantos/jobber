Imobil::Application.routes.draw do
  get "sobre/atualizar"
  
  get "sobre/editar"
  
  get "admin/index"
  
  post "destaques/new"
  
  get "destaques/index"

  post "imagem/new"
  
  get "sobre/index"

  get "contato/index"

  get "contato/envia"

  get "exibe_imovel/show"

  get "busca/busca_imoveis"

  get "busca/index"
  
  resources :localizacao
  
  resources :empresas

  resources :logotipos
  
  resources :admin  
  
  resources :destaques
  
  resources :imagem
  
  resources :sobre
  
  resources :contato
  
  resources :exibe_imovel
  
  resources :busca

  resources :tipos

  resources :operacoes

  resources :imovel_tipos

  resources :cidades

  resources :imoveis

  resources :clientes

  resources :controle
  
  get "users/index"
  get "users/show"

  devise_for :admins
  devise_for :users
  resources :users, :only => [:index, :show]
  root :to => "home#index"
end
