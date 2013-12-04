Rubyblog::Application.routes.draw do
  resources :categories

  resources :posts

  resources :comments

  root :to => "posts#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end