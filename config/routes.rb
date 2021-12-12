Rails.application.routes.draw do
  get '/' => "top#top"

  # get 'posts/show'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/destroy'
  get 'new' => "posts#new"
  resources :posts , only: [:index, :show, :create, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
