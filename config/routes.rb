Rails.application.routes.draw do
  resources :sessions

  resources :users, only: [:new, :create]

  resources :universities do
    resources :courses
  end

end
