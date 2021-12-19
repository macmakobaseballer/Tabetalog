Rails.application.routes.draw do
  get   'sessions/new'
  root  'top#top'
  get   '/signup'   =>   'users#new'
  # get 'posts/show'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/destroy'
  get   'new' => "posts#new"
  resources :posts , only: [:index, :show, :create, :edit ,:update, :destroy]
  get   '/login'    =>   'sessions#new'
  post  '/login'    =>   'sessions#create'
  delete'/logout'   =>   'sessions#destroy'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
