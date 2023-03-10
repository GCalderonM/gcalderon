Rails.application.routes.draw do
  namespace :admin do
    get  'sign_in', to: 'sessions#new'
    post 'sign_in', to: 'sessions#create'
    # get  'sign_up', to: 'registrations#new'
    # post 'sign_up', to: 'registrations#create'
    resources :sessions, only: [:index, :show, :destroy]
    resource  :password, only: [:edit, :update]
    namespace :identity do
      resource :email,              only: [:edit, :update]
      resource :email_verification, only: [:edit, :create]
      resource :password_reset,     only: [:new, :edit, :create, :update]
    end
    resources :works
    resources :posts, param: :slug
    resources :projects
  end

  root 'home#index'
  get 'download_cv', to: 'home#download_cv'
  get 'post/:slug', to: 'home#show_post', as: 'post', param: :slug
  get 'blog', to: 'home#blog'
  get 'uses', to: 'home#uses'
  get 'works', to: 'home#works'
end
