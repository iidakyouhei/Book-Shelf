Rails.application.routes.draw do
  devise_for :users
  root to: 'cards#index'
  resources :cards do
    member do
      get 'show_image'
    end
  end
end
