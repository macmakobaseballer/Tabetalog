Rails.application.routes.draw do
  get '/' => "top#top"

  # get 'posts/show'
  # get 'posts/create'
  # get 'posts/edit'
  # get 'posts/destroy'

  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
