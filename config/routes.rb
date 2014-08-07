Rails.application.routes.draw do



  resources :sessions

  resources :users, only: [:new, :create]

  resources :universities do
    resources :courses
  end

  resources :courses do
    resources :notes
  end

end
