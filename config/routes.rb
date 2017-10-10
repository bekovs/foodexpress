Rails.application.routes.draw do

  ActiveAdmin.routes(self)
	root 'pages#index'
	get 'pages/:id' => 'pages#show', as: 'pages_show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
