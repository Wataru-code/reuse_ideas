Rails.application.routes.draw do
  get 'mypage', to: 'users#me'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'login', to: 'home#index'
  resources :users, only: %i[new create]
  resources :ideas
  resources :comments, only: %i[create destroy]
end
