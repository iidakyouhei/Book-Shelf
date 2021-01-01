Rails.application.routes.draw do
  devise_for :users
  root to: 'cards#index'
  resources :cards do
    collection do
      get 'search'
    end
  end
end
