Rails.application.routes.draw do
  namespace :v1, defaults: { format: 'json' } do
    resources :journeymen, only: [:index, :show, :create, :destroy]
    resources :reservations, only: [:index, :show, :create, :destroy]
  end
end
