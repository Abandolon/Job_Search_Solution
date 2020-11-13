Rails.application.routes.draw do
  devise_for :users
  root to: 'jobs#index'

  resources :jobs, only: [:index, :show] do
    resources :job_applications, only: [:create]
  end
end
