Rails.application.routes.draw do
  devise_for :users
  resources :projects, except: [:show]
  get 'portfolio/:id', to: 'projects#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'

end
