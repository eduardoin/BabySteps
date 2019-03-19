Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'pages/sidebar', to: 'pages#sidebar'
  resources :kids do
    member do
      get 'tracking'
      get 'full_log'
      get 'chart'
      get 'share'
    end
    resources :episodes, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
