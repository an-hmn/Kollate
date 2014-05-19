Kollate::Application.routes.draw do

  resources :projects do
	  resources :moodboards
	  resources :images
  end

  devise_for :users
  get 'about' => 'pages#about'
  get 'inspiration' => 'pages#inspiration'
  get 'dashboard' => 'pages#dashboard'

  root :to => 'pages#home'

end
