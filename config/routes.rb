Rails.application.routes.draw do

  resources :upvotes, only: [:new, :create, :destroy]

  resources :sessions

  resources :users

  namespace :admin do
    resources :users
  end

  resources :universities do
    resources :courses do
      resources :notes
    end
  end

  # resources :courses do
  #   resources :notes
  # end

end
