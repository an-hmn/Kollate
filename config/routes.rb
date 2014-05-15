Kollate::Application.routes.draw do
  devise_for :users
  get 'about' => 'pages#about'

  root :to => 'pages#home'

end
