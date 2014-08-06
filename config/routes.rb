Rails.application.routes.draw do
  get 'courses/update'

  get 'courses/create'

  get 'courses/index'

  get 'courses/show'

  get 'courses/new'

  get 'courses/edit'

  get 'courses/destroy'

  resources :sessions

  resources :users, only: [:new, :create]

  resources :universities do
    resources :courses
  end

end
