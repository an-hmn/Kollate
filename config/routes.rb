Kollate::Application.routes.draw do
  resources :images

  devise_for :users
  get 'about' => 'pages#about'
  get 'inspiration' => 'pages#inspiration'

  root :to => 'pages#home'

end
