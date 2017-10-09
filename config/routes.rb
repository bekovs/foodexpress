Rails.application.routes.draw do

  ActiveAdmin.routes(self)
	root 'pages#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
