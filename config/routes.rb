Rails.application.routes.draw do
  root 'top#top'
  get '/signup' => 'users#new'
  # get 'posts/show'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/destroy'
  get 'new' => "posts#new"
  resources :posts , only: [:index, :show, :create, :edit ,:update, :destroy]
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
