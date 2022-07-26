Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  namespace :v1, defaults: { format: 'json' } do
    resources :journeymen, only: [:index, :show, :create, :destroy]
    resources :reservations, only: [:index, :show, :create, :destroy]
  end
end
