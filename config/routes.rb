Rails.application.routes.draw do
  devise_for :users
  resources :posts
  get 'about', to: 'pages#about'
  get 'pages/about'
  get 'posts', to: 'pages#posts'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
end
