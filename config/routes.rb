Rails.application.routes.draw do
  resources :contacts, only: [:new, :create, :index, :show] do
    member do
      get :toggle_status
    end
  end

  resources :topics, only: [:show, :index]
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :projects, except: [:show] do
    put :sort, on: :collection
  end
  get 'portfolio/:id', to: 'projects#show', as: 'portfolio_show'

  get 'about-me', to: 'pages#about'
  get 'contact-me', to: 'contacts#new'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'

end
