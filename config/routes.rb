Rails.application.routes.draw do
  devise_for :users
  get 'top' => 'homes#top'
  get "home/about" => "homes#about"

  root 'deck_images#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :deck_images, only: [:new, :create, :index, :show]
end
