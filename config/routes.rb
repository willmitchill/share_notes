Rails.application.routes.draw do

  resources :index, only: [:show, :index]

  resources :upvotes, only: [:new, :create, :destroy, :index, :show]

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

  post "upvotes/:note_id", to: "upvotes#create"

  # resources :courses do
  #   resources :notes
  # end

end
